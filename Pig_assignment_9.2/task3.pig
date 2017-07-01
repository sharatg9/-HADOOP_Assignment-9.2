Data = LOAD '/demo/test2.txt' USING PigStorage(',') ;  
B = foreach Data generate $1,$5 ;
C = filter B by ($0 == 'goverenment' and $1 == 'alabama'  ) ;
D = group C ALL ;
E = foreach D generate COUNT(D.$1) ;
dump E;
