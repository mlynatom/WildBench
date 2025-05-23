MODEL=$1 # your model name
MODEL_2=$2
bash /home/mlynatom/WildBench/evaluation/run_eval_v2_batch.score.sh $MODEL # individual scoring with GPT-4O (since June 13, 2024)
bash /home/mlynatom/WildBench/evaluation/run_eval_v2_batch.score.sh $MODEL_2 # individual scoring with GPT-4O (since June 13, 2024)
bash /home/mlynatom/WildBench/evaluation/run_eval_v2_batch.sh $MODEL $MODEL_2 # pairwise eval with gpt-4-turbo #TODO


python /home/mlynatom/WildBench/src/openai_batch_eval/submit_batch.py "/home/mlynatom/master-thesis-repository-tomas-mlynar/wildbench_result_dirs/v2.0522/pairwise.v2/eval=gpt-4-turbo-2024-04-09/ref=B+IT/B+IT->IT_(cs+en).batch-submit.jsonl"
# python src/openai_batch_eval/submit_batch.py eval_results/v2.0522/pairwise.v2/eval=gpt-4-turbo-2024-04-09/ref=claude-3-haiku-20240307/$MODEL.batch-submit.jsonl
# python src/openai_batch_eval/submit_batch.py eval_results/v2.0522/pairwise.v2/eval=gpt-4-turbo-2024-04-09/ref=Llama-2-70b-chat-hf/$MODEL.batch-submit.jsonl
# # python src/openai_batch_eval/submit_batch.py eval_results/v2.0522/score.v2/eval=gpt-4-turbo-2024-04-09/$MODEL.batch-submit.jsonl
python /home/mlynatom/WildBench/src/openai_batch_eval/submit_batch.py "/home/mlynatom/master-thesis-repository-tomas-mlynar/wildbench_result_dirs/v2.0625/score.v2/eval=gpt-4o-2024-05-13/B+IT->IT_(cs+en).batch-submit.jsonl"
python /home/mlynatom/WildBench/src/openai_batch_eval/submit_batch.py "/home/mlynatom/master-thesis-repository-tomas-mlynar/wildbench_result_dirs/v2.0625/score.v2/eval=gpt-4o-2024-05-13/B+IT.batch-submit.jsonl"


# python src/openai_batch_eval/check_batch_status_with_model_name.py $MODEL