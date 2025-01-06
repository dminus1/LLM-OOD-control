# Copyright (C) 2024  Dmitri Roussinov
# This program is free software under GPL 3, see http://www.gnu.org/licenses/
'''
Posted on https://github.com/dminus1/LLM-OOD-control
For the the following paper:
"Controlling Out-of-Domain Gaps in LLMs for Genre Classification and Generated Text Detection",
by D Roussinov, S Sharoff, N Puchnina,
The 31st International Conference on Computational Linguistics, 2025
This code calls Anthropic API to generate text based on a given prompt.
Some parts of the code are not used in the project.
'''
import os
from anthropic import Anthropic
import argparse

# Set your API key (replace with your actual key)
API_KEY = "<put your API key here>"

parser = argparse.ArgumentParser(description='Neural Machine Translation Example.'
                                             'We train the Transformer Model')
parser.add_argument('--inp', type=str, default='claude-prompt.txt', help='genre index')
parser.add_argument('--out', type=str, default='claude-output.txt', help='genre index')
parser.add_argument('--model', type=str, default="claude-3-haiku-20240307", help='genre index')
parser.add_argument('--cut', type=int, default=-1)

args = parser.parse_args()


os.environ["ANTHROPIC_API_KEY"] = API_KEY
output_file_path = args.out   #

client = Anthropic()

def append_to_output_file(output_file_path, response):
    with open(output_file_path, 'a', encoding='utf-8') as file:
        file.write(response + "\n\n")
def read_input_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()
    return content


# Define a function to send a message and get response
def send_message(message):
  """
  Sends a message to Claude and returns the response.

  Args:
      message: The message to send to Claude.

  Returns:
      The response from Claude.
  """

  response = client.messages.create(
      model =  args.model,
      max_tokens=4096,
      system="Your system prompt here (optional)",
      messages=[{"role": "user", "content": message}]
  )
  '''response = client.messages.complete(
      messages=[{"role": "user", "content": message}]
  )'''

  return response.content[0].text

prompt = read_input_file(args.inp)
append_to_output_file(output_file_path, "** input: \n\n" + prompt)
claude_response = send_message(prompt)
if args.cut > 0: claude_response = claude_response[0:args.cut]
append_to_output_file(output_file_path, "** output: \n\n" + claude_response)
print(f"Claude response: {claude_response}")
