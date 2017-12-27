python src/trans.py --src_lang en --tgt_lang fr --query topics/en.t --tquery qmodel/fr.muse --src_emb data/multilingual/wiki.multi.en.vec --tgt_emb data/multilingual/wiki.multi.fr.vec --dico_train data/crosslingual/dictionaries/en-fr.txt 
IndriRunQuery qmodel/fr.muse -index=index -count=1000 -trecFormat=true > result/result.file
trec_eval judg/rel.judg result/result.file 
