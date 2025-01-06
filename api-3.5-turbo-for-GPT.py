# Copyright (C) 2024  Dmitri Roussinov
# This program is free software under GPL 3, see http://www.gnu.org/licenses/
'''
Posted on https://github.com/dminus1/LLM-OOD-control
For the the following paper:
"Controlling Out-of-Domain Gaps in LLMs for Genre Classification and Generated Text Detection",
by D Roussinov, S Sharoff, N Puchnina,
The 31st International Conference on Computational Linguistics, 2025
This code calls OpenAI API to generate text based on a given prompt.
Some parts of the code are not used in the project.
'''

import requests
import argparse
parser = argparse.ArgumentParser(description='Neural Machine Translation Example.'
                                             'We train the Transformer Model')

parser.add_argument('--inp', type=str, default="prompt-GPT-3.5-turbo-api.txt", help='genre index')
parser.add_argument('--prepend', type=str, default="prepend-file.txt", help='genre index')
parser.add_argument('--document', type=str, default='document.txt', help='genre index')
parser.add_argument('--out', type=str, default='tmp-output.txt', help='genre index')
parser.add_argument('--model', type=str, default="gpt-3.5-turbo-0125", help='genre index')
args = parser.parse_args()


def query_gpt3_chat(prompt):
    api_url = "https://api.openai.com/v1/chat/completions"
    headers = {
        "Authorization": "Bearer <Insert your key here>",
        "Content-Type": "application/json",
    }
    # Example of preprocessing the prompt to ensure new lines are handled correctly
    # This is just a demonstration; normally, '\n' in strings should work directly.
    formatted_prompt = prompt.replace("\n", "\\n")
    data = {

        "model": args.model,
        "messages": [{"role": "user", "content": formatted_prompt}],
    }
    response = requests.post(api_url, json=data, headers=headers)
    return response.json()

# Example prompt with new lines
prompt = ''.join(open(args.inp, encoding = "ISO-8859-1").readlines()) #RECENT encoding added
'''prompt = """This is the first line.
This is the second line.
What do you think?"""'''

response = query_gpt3_chat(prompt)
with open(args.out, 'w', encoding = "ISO-8859-1") as file:
    file.write("** input: \n\n")
    file.write(prompt)
    file.write("** output: \n\n")
    file.write(response["choices"][0]["message"]["content"])
