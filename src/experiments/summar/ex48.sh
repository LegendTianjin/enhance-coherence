export CUDA_VISIBLE_DEVICES=1
python run.py \
  --model=cohere_extract_rf \
  --data_path=data/cnndaily/training_shuf.pkl \
  --input_vocab=data/cnndaily/training.vocab \
  --input_vsize 150000 \
  --ckpt_root=checkpoints/cnndaily/summar/ex48 \
  --summary_dir=log/cnndaily/summar/ex48 \
  --mode=train \
  --train_mode='rouge+coherence' \
  --lr 0.15 \
  --min_lr 0.01 \
  --max_grad_norm 0.12 \
  --decay_step 30000 \
  --decay_rate 0.9 \
  --dropout 0.1 \
  --batch_size 32 \
  --max_run_steps 200000 \
  --display_freq 100 \
  --valid_path=data/cnndaily/validation_shuf.pkl \
  --valid_freq 1000 \
  --num_valid_batch 50 \
  --checkpoint_secs 1200 \
  --use_bucketing False \
  --truncate_input True \
  --min_num_input_sents 3 \
  --num_gpus 1 \
  --emb_dim 128 \
  --num_sents_doc 80 \
  --num_words_sent 50 \
  --rel_pos_max_idx 11 \
  --enc_num_hidden 256 \
  --enc_layers 1 \
  --pos_emb_dim 0 \
  --doc_repr_dim 512 \
  --hist_repr_dim 512 \
  --word_conv_widths '3,5,7' \
  --word_conv_filters '128,256,256' \
  --mlp_num_hiddens '512,256' \
  --pretrain_dir=checkpoints/archive/cnndaily/summar/ex44 \
  --rouge_coef 1.0 \
  --coherence_coef 0.01 \
  --coh_reward_clip 4.0 \
  --coherence_dir=checkpoints/archive/cnndaily/seqmatch/ex13 \
  --seqmatch_type "conv_match" \
  --max_sent_len 50 \
  --sm_emb_dim 64 \
  --sm_conv1d_filter 128 \
  --sm_conv1d_width 3 \
  --sm_conv_filters "256,512" \
  --sm_conv_heights "3,3" \
  --sm_conv_widths "3,3" \
  --sm_maxpool_widths "2,2" \
  --sm_fc_num_units "512,256" \
  --temp_dir '/tmp'\

