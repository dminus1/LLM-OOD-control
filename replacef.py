# Copyright (C) 2024  Dmitri Roussinov
# This program is free software under GPL 3, see http://www.gnu.org/licenses/
'''
Posted on https://github.com/dminus1/LLM-OOD-control
For the the following paper:
"Controlling Out-of-Domain Gaps in LLMs for Genre Classification and Generated Text Detection",
by D Roussinov, S Sharoff, N Puchnina,
The 31st International Conference on Computational Linguistics, 2025
This code replaces some requested parts of a file with the texts in specified files.
Some parts of the code are not used in the project.
'''


import argparse
import sys

def replace_string_in_file(input_file, output_file, target_file, replacement_file):
    try:
        # Read the content of the input file
        with open(input_file, 'r', encoding='utf-8') as file:
            content = file.read()

        # Read the target string from the target file
        with open(target_file, 'r', encoding='utf-8') as file:
            target = file.read().strip()

        # Read the replacement string from the replacement file
        with open(replacement_file, 'r', encoding='utf-8') as file:
            replacement = file.read()
            #replacement = file.read().strip()

        # Replace the target string with the replacement string
        #assert target in content
        if not target in content:
            print("\n\nError: Content to be replaced not found!\n\n")
            os.remove(args.out)
            exit(0)

        new_content = content.replace(target, replacement)

        # Write the new content to the output file
        with open(output_file, 'w', encoding='utf-8') as file:
            file.write(new_content)

        print(f"Successfully replaced in {output_file}.")
    except FileNotFoundError as e:
        print(f"Error: {e}")
    except IOError as e:
        print(f"An I/O error occurred: {str(e)}")
    except Exception as e:
        print(f"An error occurred: {str(e)}")

def main():
    # Set up the argument parser
    parser = argparse.ArgumentParser(
        description='Replace a specific string in a file and output the result to a new file.')
    parser.add_argument('--inp', type=str, default="input-example-tmp.txt", help='Input file path')
    parser.add_argument('--out', type=str, default='new_document.txt', help='Output file path')
    parser.add_argument('--target_file', type=str, required=True, help='File containing the string to be replaced')
    parser.add_argument('--replacement_file', type=str, required=True, help='File containing the string to replace with')

    # Parse arguments
    args = parser.parse_args()

    # Call the function to replace string
    replace_string_in_file(args.inp, args.out, args.target_file, args.replacement_file)

if __name__ == "__main__":
    main()
