
Data = LOAD '/demo/test2.txt' USING PigStorage(',') ;  
B = filter Data by ($5 == 'alaska' );
C = foreach B generate $0 ;
dump C;
