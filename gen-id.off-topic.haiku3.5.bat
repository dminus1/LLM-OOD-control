REM Testing detecting generated text produced by Sonnet 3. Detection performed by claude-3-5-haiku-20241022
REM Notes: the topics are not completely ordered

python replacef.py --inp prompt-gen-id-topic-1-hyper-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-1-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-1-hyper-sonnet3.txt --predictions prompt-gen-id-topic-1-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-2-giga-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-2-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-2-giga-sonnet3.txt --predictions prompt-gen-id-topic-2-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-3-giga-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-3-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-3-giga-sonnet3.txt --predictions prompt-gen-id-topic-3-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-7-review-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-7-review-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-7-review-sonnet3.txt --predictions prompt-gen-id-topic-7-review-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-9-review-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-9-review-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-9-review-sonnet3.txt --predictions prompt-gen-id-topic-9-review-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-12-hyper-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-12-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-12-hyper-sonnet3.txt --predictions prompt-gen-id-topic-12-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-14-review-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-14-review-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-14-review-sonnet3.txt --predictions prompt-gen-id-topic-14-review-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-18-hyper-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-18-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-18-hyper-sonnet3.txt --predictions prompt-gen-id-topic-18-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-19-giga-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-19-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-19-giga-sonnet3.txt --predictions prompt-gen-id-topic-19-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-20-giga-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-20-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-20-giga-sonnet3.txt --predictions prompt-gen-id-topic-20-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-21-hyper-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-21-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-21-hyper-sonnet3.txt --predictions prompt-gen-id-topic-21-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-22-hyper-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-22-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-22-hyper-sonnet3.txt --predictions prompt-gen-id-topic-22-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-23-giga-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-23-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-23-giga-sonnet3.txt --predictions prompt-gen-id-topic-23-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-24-hyper-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-24-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-24-hyper-sonnet3.txt --predictions prompt-gen-id-topic-24-hyper-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

python replacef.py --inp prompt-gen-id-topic-25-giga-off-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-25-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-25-giga-sonnet3.txt --predictions prompt-gen-id-topic-25-giga-off-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 17 ======
python replacef.py --inp prompt-gen-id-topic-17-giga-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-17-giga-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-17-giga-sonnet3.txt --predictions prompt-gen-id-topic-17-giga-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 16 ======
python replacef.py --inp prompt-gen-id-topic-16-giga-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-16-giga-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-16-giga-sonnet3.txt --predictions prompt-gen-id-topic-16-giga-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 11-Hyper ======
python replacef.py --inp prompt-gen-id-topic-11-hyper-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-11-hyper-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-11-hyper-sonnet3.txt --predictions prompt-gen-id-topic-11-hyper-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 8-Hyper ======
python replacef.py --inp prompt-gen-id-topic-8-hyper-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-8-hyper-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-8-hyper-sonnet3.txt --predictions prompt-gen-id-topic-8-hyper-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 6-Review ======
python replacef.py --inp prompt-gen-id-topic-6-review-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-6-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-6-review-sonnet3.txt --predictions prompt-gen-id-topic-6-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 5-Review ======
python replacef.py --inp prompt-gen-id-topic-5-review-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-5-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-5-review-sonnet3.txt --predictions prompt-gen-id-topic-5-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 4-Review ======
python replacef.py --inp prompt-gen-id-topic-4-review-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-4-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-4-review-sonnet3.txt --predictions prompt-gen-id-topic-4-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 15-Review ======
python replacef.py --inp prompt-gen-id-topic-15-review-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-15-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-15-review-sonnet3.txt --predictions prompt-gen-id-topic-15-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 10-Review ======
python replacef.py --inp prompt-gen-id-topic-10-review-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-10-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-10-review-sonnet3.txt --predictions prompt-gen-id-topic-10-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

REM ====== Topic 13-Review ======
python replacef.py --inp prompt-gen-id-topic-13-review-on-topic.ee.sonnet3.txt --out tmp-control-prompt.txt --target_file ee-prompt.txt --replacement_file accuracy-prompt.txt
python ClaudeAPItest.py --inp tmp-control-prompt.txt --out prompt-gen-id-topic-13-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt --model claude-3-5-haiku-20241022
python accuracy-from-list-of-predictions.py --positive_indices human-labels-topic-13-review-sonnet3.txt --predictions prompt-gen-id-topic-13-review-on-topic.ee.sonnet3.out.haiku3.5.run1.a.txt

