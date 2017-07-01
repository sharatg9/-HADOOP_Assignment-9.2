Data = LOAD '/demo/test2.txt' USING PigStorage(',') ;  
B = filter Data by ($5 == 'oregon'  and  $3 == 'BE' ) ;
C = foreach B generate $0 ;
dump C;
