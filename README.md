# LLM-OOD-control
**The code and data for "Controlling Out-of-Domain Gaps in LLMs for Genre Classification and Generated Text Detection", D. Roussinov, S. Sharoff,  N. Puchnina, The 31st International Conference on Computational Linguistics (COLING 2025)**

Here, you can find all the data and source files to re-create our experiments.

**1. Genre classificaion and OOD.**

The commands to obtain on-topic classification accuracy can be found in the file "genre-on-topic-haiku.bat". It uses the following Python source files: "api-batch-Claude.py", "accuracy.py". The outputs from the LLM (Claude here) may need to be manually edited to remove the extra occurrences of "Class 1" and "Class 2" substrings, otherwise accuracy computation reports an assertion error. All the data (in ready-to-use prompt format) are in "genre-prompts-on-topic.zip" organized by topics, as in the paper.



