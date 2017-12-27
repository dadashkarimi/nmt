MP_NUM_THREADS=4  THEANO_FLAGS=device=cuda0 flags=-lopenblas python unsupervised.py --src_lang en --tgt_lang es --src_emb data/wiki.en.vec --tgt_emb data/wiki.es.vec --n_iter 5
