REM genre classificaion, on-topic, GPT-4o
REM Process for dataset 1
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-1-review-wiki.txt --out tmp-predictions-API-1.txt

REM Process for dataset 2
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-2-wiki-hyper.txt --out tmp-predictions-API-2.txt

REM Process for dataset 3
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-3-review-hyper.txt --out tmp-predictions-API-3.txt

REM Process for dataset 4
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-4-giga-hyper.txt --out tmp-predictions-API-4.txt

REM Process for dataset 5
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-5-stack-giga.txt --out tmp-predictions-API-5.txt

REM Process for dataset 6
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-6-hyper-review.txt --out tmp-predictions-API-6.txt

REM Process for dataset 7
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-7-hyper-giga.txt --out tmp-predictions-API-7.txt

REM Process for dataset 8
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-8-giga-review.txt --out tmp-predictions-API-8.txt

REM Process for dataset 9
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-9-hyper-wiki.txt --out tmp-predictions-API-9.txt

REM Process for dataset 10
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-10-giga-wiki.txt --out tmp-predictions-API-10.txt

REM Process for dataset 11
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-11-review-giga.txt --out tmp-predictions-API-11.txt

REM Process for dataset 12
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-12-wiki-stack.txt --out tmp-predictions-API-12.txt

REM Process for dataset 13
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-13-wiki-stack.txt --out tmp-predictions-API-13.txt

REM Process for dataset 14
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-14-review-stories.txt --out tmp-predictions-API-14.txt

REM Process for dataset 15
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-15-stories-review.txt --out tmp-predictions-API-15.txt

REM Process for dataset 16
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-16-wiki-stories.txt --out tmp-predictions-API-16.txt

REM Process for dataset 17
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-17-hyper-stories.txt --out tmp-predictions-API-17.txt

REM Process for dataset 18
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-18-giga-wiki.txt --out tmp-predictions-API-18.txt

REM Process for dataset 19
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-19-hyper-giga.txt --out tmp-predictions-API-19.txt

REM Process for dataset 20
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-20-stories-stack.txt --out tmp-predictions-API-20.txt

REM Process for dataset 21
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-21-stack-wiki.txt --out tmp-predictions-API-21.txt

REM Process for dataset 22
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-22-stories-hyper.txt --out tmp-predictions-API-22.txt

REM Process for dataset 23
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-23-stack-stories.txt --out tmp-predictions-API-23.txt

REM Process for dataset 24
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-24-stories-stack.txt --out tmp-predictions-API-24.txt

REM Process for dataset 25
python api-batch.py --tests_total 10 --batch_size 10 --model  gpt-4o --inp examples-on-topic-25-stack-review.txt --out tmp-predictions-API-25.txt

REM assessing:
python accuracy.py --size 10 --labels labels-1-review-wiki.txt --genre1 review --genre2 wiki --inp tmp-predictions-API-1.txt

python accuracy.py --size 10 --labels labels-2-wiki-hyper.txt --genre1 wiki --genre2 hyper --inp tmp-predictions-API-2.txt

python accuracy.py --size 10 --labels labels-3-review-hyper.txt --genre1 review --genre2 hyper --inp tmp-predictions-API-3.txt

python accuracy.py --size 10 --labels labels-4-giga-hyper.txt --genre1 giga --genre2 hyper --inp tmp-predictions-API-4.txt

python accuracy.py --size 10 --labels labels-5-stack-giga.txt --genre1 stack --genre2 giga --inp tmp-predictions-API-5.txt

python accuracy.py --size 10 --labels labels-6-hyper-review.txt --genre1 hyper --genre2 review --inp tmp-predictions-API-6.txt

python accuracy.py --size 10 --labels labels-7-hyper-giga.txt --genre1 hyper --genre2 giga --inp tmp-predictions-API-7.txt

python accuracy.py --size 10 --labels labels-8-giga-review.txt --genre1 giga --genre2 review --inp tmp-predictions-API-8.txt

python accuracy.py --size 10 --labels labels-9-hyper-wiki.txt --genre1 hyper --genre2 wiki --inp tmp-predictions-API-9.txt

python accuracy.py --size 10 --labels labels-10-giga-wiki.txt --genre1 giga --genre2 wiki --inp tmp-predictions-API-10.txt

python accuracy.py --size 10 --labels labels-11-review-giga.txt --genre1 review --genre2 giga --inp tmp-predictions-API-11.txt

python accuracy.py --size 10 --labels labels-12-wiki-stack.txt --genre1 wiki --genre2 stack --inp tmp-predictions-API-12.txt

python accuracy.py --size 10 --labels labels-13-wiki-stack.txt --genre1 wiki --genre2 stack --inp tmp-predictions-API-13.txt

python accuracy.py --size 10 --labels labels-14-review-stories.txt --genre1 review --genre2 stories --inp tmp-predictions-API-14.txt

python accuracy.py --size 10 --labels labels-15-stories-review.txt --genre1 stories --genre2 review --inp tmp-predictions-API-15.txt

python accuracy.py --size 10 --labels labels-16-wiki-stories.txt --genre1 wiki --genre2 stories --inp tmp-predictions-API-16.txt

python accuracy.py --size 10 --labels labels-17-hyper-stories.txt --genre1 hyper --genre2 stories --inp tmp-predictions-API-17.txt

python accuracy.py --size 10 --labels labels-18-giga-wiki.txt --genre1 giga --genre2 wiki --inp tmp-predictions-API-18.txt

python accuracy.py --size 10 --labels labels-19-hyper-giga.txt --genre1 hyper --genre2 giga --inp tmp-predictions-API-19.txt

python accuracy.py --size 10 --labels labels-20-stories-stack.txt --genre1 stories --genre2 stack --inp tmp-predictions-API-20.txt

python accuracy.py --size 10 --labels labels-21-stack-wiki.txt --genre1 stack --genre2 wiki --inp tmp-predictions-API-21.txt

python accuracy.py --size 10 --labels labels-22-stories-hyper.txt --genre1 stories --genre2 hyper --inp tmp-predictions-API-22.txt

python accuracy.py --size 10 --labels labels-23-stack-stories.txt --genre1 stack --genre2 stories --inp tmp-predictions-API-23.txt

python accuracy.py --size 10 --labels labels-24-stories-stack.txt --genre1 stories --genre2 stack --inp tmp-predictions-API-24.txt

python accuracy.py --size 10 --labels labels-25-stack-review.txt --genre1 stack --genre2  review --inp tmp-predictions-API-25.txt
