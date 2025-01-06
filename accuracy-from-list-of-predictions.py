# Copyright (C) 2024  Dmitri Roussinov
# This program is free software under GPL 3, see http://www.gnu.org/licenses/
'''
Posted on https://github.com/dminus1/LLM-OOD-control
For the the following paper:
"Controlling Out-of-Domain Gaps in LLMs for Genre Classification and Generated Text Detection",
by D Roussinov, S Sharoff, N Puchnina,
The 31st International Conference on Computational Linguistics, 2025
This code calculates classification accuracy based on the outputs created by "ClaudeAPItest.py"
Some parts of the code are not used in the project.
'''
import argparse
import sys
import re

def read_positive_indices(filename):
    try:
        with open(filename, 'r') as f:
            content = f.read()
        positive_indices = [int(x) for x in content.strip().split()]
        return set(positive_indices)
    except FileNotFoundError:
        print(f"Error: File '{filename}' not found.")
        sys.exit(1)
    except ValueError:
        print(f"Error: Invalid format in '{filename}'. Expected space-separated integers.")
        sys.exit(1)

def read_predictions(filename):
    predictions = {}
    try:
        with open(filename, 'r') as f:
            lines = f.readlines()
        # Skip lines until we find '** output:' followed by an empty line
        i = 0
        while i < len(lines):
            line = lines[i].strip()
            if line == '** output:':
                i += 1  # Move to the next line
                # Skip empty lines
                while i < len(lines) and lines[i].strip() == '':
                    i += 1
                break
            else:
                i += 1
        else:
            print(f"Error: '** output:' marker not found in '{filename}'.")
            sys.exit(1)
        # Now read the predictions from the remaining lines
        prediction_pattern = re.compile(r'^(\d+):\s*(Class\s*[12])$')
        while i < len(lines):
            line = lines[i].strip()
            if line == '':
                i += 1
                continue
            # Try to match prediction lines
            match = prediction_pattern.match(line)
            if match:
                index = int(match.group(1))
                predicted_class = match.group(2)
                predictions[index] = predicted_class
            # Ignore lines that do not match the prediction format
            i += 1
        if not predictions:
            print(f"Error: No predictions found after '** output:' in '{filename}'.")
            sys.exit(1)
        return predictions
    except FileNotFoundError:
        print(f"Error: File '{filename}' not found.")
        sys.exit(1)

def compute_accuracy(true_positives, predictions):
    total_instances = len(predictions)
    if total_instances == 0:
        print("Error: No predictions found.")
        sys.exit(1)
    correct_predictions = 0
    for index, predicted_class in predictions.items():
        if index in true_positives:
            if predicted_class == 'Class 1':
                correct_predictions += 1
        else:
            if predicted_class == 'Class 2':
                correct_predictions += 1
    accuracy = correct_predictions / total_instances
    return accuracy

def main():
    parser = argparse.ArgumentParser(description='Compute accuracy from predictions.')
    parser.add_argument('--positive_indices', type=str, default='positive_indices.txt',
                        help='File containing indices of positive instances (Class 1).')
    parser.add_argument('--predictions', type=str, default='predictions.txt',
                        help="File containing predictions after '** output:' marker.")
    args = parser.parse_args()

    true_positives = read_positive_indices(args.positive_indices)
    predictions = read_predictions(args.predictions)
    accuracy = compute_accuracy(true_positives, predictions)
    print(f'The accuracy is {accuracy:.4f}')
    with open("ROCs.csv", 'a', encoding='utf-8') as file:
        file.write(f"\n{args.predictions},{args.positive_indices},{accuracy:.4f}")

if __name__ == '__main__':
    main()
