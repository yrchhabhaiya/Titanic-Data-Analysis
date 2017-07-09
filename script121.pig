A = LOAD '/flume_sink/FlumeData.1499614717765.tmp' USING PigStorage(',') AS (passengerId:int, survived:int, pclass:int, name:chararray, sex:chararray, age:float, sibSp:int, parch:int, ticket:int, fare:float, cabin:chararray, embarked:chararray);

B = FOREACH A GENERATE passengerId, name, sex, age, fare, pclass;

C = GROUP B BY pclass;

D = FOREACH C GENERATE group, AVG(B.fare);

Dump D;

