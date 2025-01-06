# Copyright (C) 2024  Dmitri Roussinov
# This program is free software under GPL 3, see http://www.gnu.org/licenses/
'''
Posted on https://github.com/dminus1/LLM-OOD-control
For the the following paper:
"Controlling Out-of-Domain Gaps in LLMs for Genre Classification and Generated Text Detection",
by D Roussinov, S Sharoff, N Puchnina,
The 31st International Conference on Computational Linguistics, 2025
This code calls OpenAI API to generate text based on a given prompt.
It has some features to do it batches of specified size, but this is not necessary for the results in the paper.
Some parts of the code are not used in the project.
'''
import re
import requests
import time
import os
import datetime
import shutil
import random
import argparse
parser = argparse.ArgumentParser(description='Neural Machine Translation Example.'
                                             'We train the Transformer Model')
parser.add_argument('--genre', action='store_true', help='')
parser.add_argument('--inp', type=str, default='path_to_test_texts_file.txt', help='genre index')
parser.add_argument('--out', type=str, default='tmp-predictions-batch.txt', help='genre index')
parser.add_argument('--model', type=str, default='gpt-3.5-turbo-0125', help='genre index')
parser.add_argument('--batch_size', type=int, default=20, help='genre index')
parser.add_argument('--tests_total', type=int, default=60, help='genre index')

args = parser.parse_args()
input_file_path = args.inp
output_file_path = args.out
batch_size = args.batch_size
num_batches = (int)(args.tests_total / batch_size)
SimApi = False

def read_input_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()
    return content


def extract_components(content):
    parts = content.split('Test Texts for Classification:', 1)
    static_part = parts[0].strip()
    test_texts_blob, instructions = parts[1].rsplit('Instructions:', 1)

    if ':' in  test_texts_blob:
        test_texts = re.findall(r'^\d+:.*?(?=\n\d+:|\Z)', test_texts_blob.strip(), re.MULTILINE | re.DOTALL)
    else:
        assert False
    return static_part, test_texts, instructions.strip()


def reassemble_prompt(static_part, instructions):
    return f"{static_part}\n\n{instructions}\n\n\n"
def find_single_digit(s):
    digit_count = 0
    found_digit = None
    for char in s:
        if char.isdigit():
            digit_count += 1
            found_digit = char
            if digit_count > 1:
                return None, False
    return (found_digit, True) if digit_count == 1 else (None, False)

def num_predictions(text):
    predictions = []
    sources = []
    undetermined = 0
    for line in text.split('\n'):
            pattern = r"(class|Class) [1-6]$"
            match = re.search(pattern, line)
            if match is not None:
                digit, is_single = find_single_digit(line.split(':')[-1])
                if is_single:
                    class_label = int(digit)
                    assert len(digit) == 1
                    predictions.append(class_label)
                    sources.append(line)
            if "Failed to get a successful response from the API" in line:
                predictions.append(random.randint(1, 6))
                sources.append('undetermined')
                undetermined += 1
                in_pred = False
    assert undetermined < 6
    return len(predictions)

def call_api_for_prompt(prompt, retries=10, delay=6):

    if SimApi:
        return "Prediction: class 2\nPrediction: class 4\nPrediction: class 6\n"

    api_url = "https://api.openai.com/v1/chat/completions"
    payload = {'prompt': prompt}
    headers = {
        "Authorization": "Bearer <replace with your API key>",
        "Content-Type": "application/json",
    }
    formatted_prompt = prompt.replace("\n", "\\n")
    data = {
        "model": args.model,
        "messages": [{"role": "user", "content": formatted_prompt}],
    }

    for attempt in range(retries):
        try:
            response = requests.post(api_url, json=data, headers=headers)
            response.raise_for_status()
            out_text = response.json()["choices"][0]["message"]["content"]
            return out_text
        except requests.RequestException as e:
            if e.args[0] == "output error":
                print(f"API did not return proper output, attempt {attempt + 1}/{retries}.")
            else:
                print(f"API request failed, attempt {attempt + 1}/{retries}. Retrying in {delay} seconds...")
                time.sleep(delay)

    print("All API calls failed. Predictions assigned randomly.")
    out_text =  ' '
    for _ in range(batch_size):
        out_text += '\n' + f"Class {random.randint(1, 6)}"
    assert num_predictions(out_text) == batch_size
    return out_text


def append_to_output_file(output_file_path, response):
    with open(output_file_path, 'a', encoding='utf-8') as file:
        file.write(response + "\n\n")


def main(input_file_path, output_file_path):
    content = read_input_file(input_file_path)
    static_part, test_texts, instructions = extract_components(content)
    count = 0
    instructions_back = instructions
    instructions = ""
    append_to_output_file(output_file_path, "input: " + input_file_path)
    for b in range (num_batches):
            prompt = reassemble_prompt(static_part, instructions)
            for i in range(batch_size):
                prompt += '\n' + f"{i+1}:" + test_texts[b*batch_size+i].split(':')[1]
            prompt+=  '\n\nInstructions:\n' + instructions_back + '\n\n'
            response = call_api_for_prompt(prompt)
            response  = str(count)  + '\n' + response
            append_to_output_file(output_file_path, response)
            count += 1

def generate_unique_filename(original_path, prefix="", suffix=""):
    """
    Generates a unique file name based on the current date and time, with optional prefix and suffix.
    Copies the original file to the new file with the unique name.

    Parameters:
    - original_path: Path to the original file.
    - prefix: Optional prefix for the unique file name.
    - suffix: Optional suffix for the unique file name.

    Returns:
    - The path to the new file with the unique name.
    """
    datetime_str = datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    new_filename = f"{prefix}{datetime_str}{suffix}.txt"
    return new_filename



if __name__ == "__main__":
    if os.path.exists(output_file_path):
        os.remove(output_file_path)
    main(input_file_path, output_file_path)

    new_file_path = generate_unique_filename(output_file_path, prefix="log-backup_", suffix="_v1")
    shutil.copy(output_file_path, new_file_path)



