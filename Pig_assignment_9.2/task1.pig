Data = LOAD '/demo/test2.txt' USING PigStorage(',') ; 
B = filter Data by $4 < 5 ;
C = foreach B generate $0;
dump C;
