for WORKDIR in ./pretrained/LakhNES
do
	python eval.py \
		--data /home/nisarg/inhouse_research/imusic/third_party_repos/repo_data/nesmdb_tx1 \
		--dataset nesmdb \
		--split all \
		--batch_size 10 \
		--tgt_len 128 \
		--ext_len 0 \
		--mem_len 896 \
		--work_dir ${WORKDIR} \
		--no_log
done
