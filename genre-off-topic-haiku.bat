REM Process for dataset 1
python api-batch-Claude.py --tests_total 10 --batch_size 10  --model claude-3-5-haiku-20241022 --inp prompt-review-wiki-predictions-no-genre-detailed-1-5-10.txt --out tmp-predictions-API-1.txt
python accuracy.py --size 10 --labels labels-1-review-wiki.txt --genre1 review --genre2 wiki --inp tmp-predictions-API-1.txt

REM Process for dataset 2
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-wiki-hyper-predictions-no-genre-detailed-2-5-10.txt --out tmp-predictions-API-2.txt
python accuracy.py --size 10 --labels labels-2-wiki-hyper.txt --genre1 wiki --genre2 hyper --inp tmp-predictions-API-2.txt

REM Process for dataset 3
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-review-hyper-predictions-no-genre-detailed-3-5-10.txt --out tmp-predictions-API-3.txt
python accuracy.py --size 10 --labels labels-3-review-hyper.txt --genre1 review --genre2 hyper --inp tmp-predictions-API-3.txt

REM Process for dataset 4 through 25 follow similar pattern
REM Include only relevant batches
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-giga-hyper-predictions-no-genre-detailed-4-5-10.txt --out tmp-predictions-API-4.txt
python accuracy.py --size 10 --labels labels-4-giga-hyper.txt --genre1 giga --genre2 hyper --inp tmp-predictions-API-4.txt

REM Process for dataset 5
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-stack-giga-predictions-no-genre-detailed-5-5-10.txt --out tmp-predictions-API-5.txt
python accuracy.py --size 10 --labels labels-5-stack-giga.txt --genre1 stack --genre2 giga --inp tmp-predictions-API-5.txt

REM Process for dataset 6
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-hyper-review-predictions-no-genre-detailed-6-5-10.txt --out tmp-predictions-API-6.txt
python accuracy.py --size 10 --labels labels-6-hyper-review.txt --genre1 hyper --genre2 review --inp tmp-predictions-API-6.txt

REM Process for dataset 7
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-hyper-giga-predictions-no-genre-detailed-7-5-10.txt --out tmp-predictions-API-7.txt
python accuracy.py --size 10 --labels labels-7-hyper-giga.txt --genre1 hyper --genre2 giga --inp tmp-predictions-API-7.txt


REM Process for dataset 8
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-giga-review-predictions-no-genre-detailed-8-5-10.txt --out  tmp-predictions-API-8.txt
python accuracy.py --size 10 --labels labels-8-giga-review.txt --genre1 giga --genre2 review --inp tmp-predictions-API-8.txt

REM Process for dataset 9
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-hyper-wiki-predictions-no-genre-detailed-9-5-10.txt --out tmp-predictions-API-9.txt
python accuracy.py --size 10 --labels labels-9-hyper-wiki.txt --genre1 hyper --genre2 wiki --inp tmp-predictions-API-9.txt

REM Process for dataset 10
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-giga-wiki-predictions-no-genre-detailed-10-5-10.txt --out tmp-predictions-API-10.txt
python accuracy.py --size 10 --labels labels-10-giga-wiki.txt --genre1 giga --genre2 wiki --inp tmp-predictions-API-10.txt

REM Process for dataset 11
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-review-giga-predictions-no-genre-detailed-11-5-10.txt --out tmp-predictions-API-11.txt
python accuracy.py --size 10 --labels labels-11-review-giga.txt --genre1 review --genre2 giga --inp tmp-predictions-API-11.txt

REM Process for dataset 12
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-wiki-stack-predictions-no-genre-detailed-12-5-10.txt --out tmp-predictions-API-12.txt
python accuracy.py --size 10 --labels labels-12-wiki-stack.txt --genre1 wiki --genre2 stack --inp tmp-predictions-API-12.txt

REM Process for dataset 13
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-wiki-stack-predictions-no-genre-detailed-13-5-10.txt --out tmp-predictions-API-13.txt
python accuracy.py --size 10 --labels labels-13-wiki-stack.txt --genre1 wiki --genre2 stack --inp tmp-predictions-API-13.txt

REM Process for dataset 14
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-review-stories-predictions-no-genre-detailed-14-5-10.txt --out tmp-predictions-API-14.txt
python accuracy.py --size 10 --labels labels-14-review-stories.txt --genre1 review --genre2 stories --inp tmp-predictions-API-14.txt

REM Process for dataset 15
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-stories-review-predictions-no-genre-detailed-15-5-10.txt --out tmp-predictions-API-15.txt
python accuracy.py --size 10 --labels labels-15-stories-review.txt --genre1 stories --genre2 review --inp tmp-predictions-API-15.txt

REM Process for dataset 16
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-wiki-stories-predictions-no-genre-detailed-16-5-10.txt --out tmp-predictions-API-16.txt
python accuracy.py --size 10 --labels labels-16-wiki-stories.txt --genre1 wiki --genre2 stories --inp tmp-predictions-API-16.txt

REM Process for dataset 17
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-hyper-stories-predictions-no-genre-detailed-17-5-10.txt --out tmp-predictions-API-17.txt
python accuracy.py --size 10 --labels labels-17-hyper-stories.txt --genre1 hyper --genre2 stories --inp tmp-predictions-API-17.txt

REM Process for dataset 18
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-giga-wiki-predictions-no-genre-detailed-18-5-10.txt --out tmp-predictions-API-18.txt
python accuracy.py --size 10 --labels labels-18-giga-wiki.txt --genre1 giga --genre2 wiki --inp tmp-predictions-API-18.txt

REM Process for dataset 19
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-hyper-giga-predictions-no-genre-detailed-19-5-10.txt --out tmp-predictions-API-19.txt
python accuracy.py --size 10 --labels labels-19-hyper-giga.txt --genre1 hyper --genre2 giga --inp tmp-predictions-API-19.txt

REM Process for dataset 20
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-stories-stack-predictions-no-genre-detailed-20-5-10.txt --out tmp-predictions-API-20.txt
python accuracy.py --size 10 --labels labels-20-stories-stack.txt --genre1 stories --genre2 stack --inp tmp-predictions-API-20.txt

REM Process for dataset 21
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-stack-wiki-predictions-no-genre-detailed-21-5-10.txt --out tmp-predictions-API-21.txt
python accuracy.py --size 10 --labels labels-21-stack-wiki.txt --genre1 stack --genre2 wiki --inp tmp-predictions-API-21.txt

REM Process for dataset 22
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-stories-hyper-predictions-no-genre-detailed-22-5-10.txt --out tmp-predictions-API-22.txt
python accuracy.py --size 10 --labels labels-22-stories-hyper.txt --genre1 stories --genre2 hyper --inp tmp-predictions-API-22.txt

REM Process for dataset 23
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-stack-stories-predictions-no-genre-detailed-23-5-10.txt --out tmp-predictions-API-23.txt
python accuracy.py --size 10 --labels labels-23-stack-stories.txt --genre1 stack --genre2 stories --inp tmp-predictions-API-23.txt

REM Process for dataset 24
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-stories-stack-predictions-no-genre-detailed-24-5-10.txt --out tmp-predictions-API-24.txt
python accuracy.py --size 10 --labels labels-24-stories-stack.txt --genre1 stories --genre2 stack --inp tmp-predictions-API-24.txt

REM Process for dataset 25
python api-batch-Claude.py --tests_total 10 --batch_size 10 --model claude-3-5-haiku-20241022 --inp prompt-stack-review-predictions-no-genre-detailed-25-5-10.txt --out tmp-predictions-API-25.txt
python accuracy.py --size 10 --labels labels-25-stack-review.txt --genre1 stack --genre2  review --inp tmp-predictions-API-25.txt

