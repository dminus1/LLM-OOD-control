# LLM-OOD-control
**The code and data for "Controlling Out-of-Domain Gaps in LLMs for Genre Classification and Generated Text Detection", D. Roussinov, S. Sharoff,  N. Puchnina, The 31st International Conference on Computational Linguistics (COLING 2025)**

Here, you can find all the data and source files to re-create our experiments.

**1. Genre classificaion and OOD.**

The commands to obtain **on-topic** classification accuracy can be found in the file "genre-on-topic-haiku.bat". It uses the following Python source files: "api-batch-Claude.py", "accuracy.py". The outputs from the LLM (Claude here) may need to be manually edited to remove the extra occurrences of "Class 1" and "Class 2" substrings, otherwise accuracy computation reports an assertion error. All the data (in ready-to-use prompt format) are in "genre-prompts-on-topic.zip" organized by topics, as in the paper. The true labels are in "labels-genre.zip".
The results are typically better than the results obtain with off-topic examples described in the next paragraph. This is the evidence of OOD gap in genre-classification task with LLMs, one of the main findings in our paper.

The commands to run testing with **off-topic** demonstration examples are in "genre-off-topic-haiku.bat". The datafiles are in "genre-prompts-off-topic.zip". The test texts are the same as in the previous paragraph, so are the true labels. The demonstration examples are from off-topic texts, as described in our paper. The results are generally worse than with off-topic examples described in the previous paragraph. This gap is reduced when the prompt excplicitely asks not to use text topics as classification attributes, as described in our paper and detailed in the paragphaphs below.

**Simple control** (telling to classify based on genre) is tested by "genre-off-topic-simple-control-haiku.bat" and "genre-prompts-off-topic-simple-control.zip". It somewhat reduces the OOD gap. **Detailed control** (explaining what it means "genre" and "topical" for this task) is tested by "genre-off-topic-detailed-control-haiku.bat" and "genre-prompts-off-topic-detailed-control.zip". This further reduces OOD gap. Those reductions are the main findings of our paper.





