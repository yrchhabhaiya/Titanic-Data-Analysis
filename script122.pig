A = LOAD '/flume_sink/FlumeData.1499614717765.tmp' USING PigStorage(',') AS (passengerId:int, survived:int, pclass:int, name:chararray, sex:chararray, age:float, sibSp:int, parch:int, ticket:int, fare:float, cabin:chararray, embarked:chararray);

B = FOREACH A GENERATE passengerId, pclass, parch, survived, embarked;

C = FILTER B BY survived==0 AND embarked=='S';

D = GROUP C BY pclass;

E = FOREACH D GENERATE group, COUNT(C.passengerId);

Dump E;

