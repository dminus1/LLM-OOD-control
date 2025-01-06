# LLM-OOD-control
**The code and data for "Controlling Out-of-Domain Gaps in LLMs for Genre Classification and Generated Text Detection", D. Roussinov, S. Sharoff,  N. Puchnina, The 31st International Conference on Computational Linguistics (COLING 2025)**

Here, you can find all the data and source files to re-create our experiments.

**1. Genre classificaion Task.**

The commands to obtain **on-topic** classification accuracy can be found in the file "genre-on-topic-haiku.bat". It uses the following Python source files: "api-batch-Claude.py", "accuracy.py". The outputs from the LLM (Claude here) may need to be manually edited to remove the extra occurrences of "Class 1" and "Class 2" substrings, otherwise accuracy computation reports an assertion error. All the data (in ready-to-use prompt format) are in "genre-prompts-on-topic.zip" organized by topics, as in the paper. The true labels are in "labels-genre.zip".
The results are typically better than the results obtain with off-topic examples described in the next paragraph. This is the evidence of OOD gap in genre-classification task with LLMs, one of the main findings in our paper.

The commands to run testing with **off-topic** demonstration examples are in "genre-off-topic-haiku.bat". The datafiles are in "genre-prompts-off-topic.zip". Ignore that the file names in it have word "detailed". The test texts are the same as in the previous paragraph, so are the true labels. The demonstration examples are from off-topic texts, as described in our paper. The results are generally worse than with off-topic examples described in the previous paragraph. This gap is reduced when the prompt excplicitely asks not to use text topics as classification attributes, as described in our paper and detailed in the paragphaphs below.

**Simple control** (telling to classify based on genre) is tested by "genre-off-topic-simple-control-haiku.bat" and "genre-prompts-off-topic-simple-control.zip". It somewhat reduces the OOD gap. **Detailed control** (explaining what it means "genre" and "topical" for this task) is tested by "genre-off-topic-detailed-control-haiku.bat" and "genre-prompts-off-topic-detailed-control.zip". This further reduces OOD gap. Those reductions are the main findings of our paper.

The commands for on-topic results with **GPT-4o** are in "genre-on-topic-gpt4o.bat". It uses "api-batch.py". Other types of prompts used in the paper (_off-topic, simple-control, detailed-control_) and the commands for the other OpenAI models can be easily obtained from them by renaming some text strings acordingly. Similarly, the commnads for the other Antropic models can be obtained.

**2. Generated Text Detection Task.**

The file structure and naming convention are similar to those above in section 1: "gen-id.off-topic.haiku3.5.bat" tests off-topic examples, no classification attribute control. "replacef.py" is used to modify prompts, which are taken from "genid-prompts-off-topic.zip". "genid-labels.zip" are the true labels (same for all prompt types). "ee-prompt.txt" and "accuracy-prompt.txt" are used to specify how to change the prompt templates.  "ClaudeAPItest.py" is used to obtain outputs from Anthropic's LLMs. "accuracy-from-list-of-predictions.py" to calculate the accuracy. Similarly to secion (1) above, some manuall cleaning of the outputs may be occasionally needed so it would run without failing asserts.

Testing OpenAPI models requires calling a different Python source to use its API, e.g. this should be used for topic 17:

```bash
python replacef.py --inp prompt-gen-id-topic-17-giga-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file  control-prompt-accuracy.txt
python api-3.5-turbo-for-GPT.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-17-giga-off-topic.ee.sonnet3.control.out.gpt3.5.run1.a.txt --model gpt-3.5-turbo-0125
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-17-giga-sonnet3.txt --predictions prompt-gen-id-topic-17-giga-off-topic.ee.sonnet3.control.out.gpt3.5.run1.a.txt
```



