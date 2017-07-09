A = LOAD '/flume_sink/FlumeData.1499614717765.tmp' USING PigStorage(',') AS (passengerId:int, survived:int, pclass:int, name:chararray, sex:chararray, age:float, sibSp:int, parch:int, ticket:int, fare:float, cabin:chararray, embarked:chararray);

B = FOREACH A GENERATE sex, pclass, survived;

C_male = FILTER B BY sex=='male' AND survived==1;

D_male = GROUP C_male BY pclass;

E_male = FOREACH D_male GENERATE group, COUNT(C_male.sex);

C_female = FILTER B BY sex=='female' AND survived==1;

D_female = GROUP C_female BY pclass;

E_female = FOREACH D_female GENERATE group, COUNT(C_female.sex);

STORE E_male INTO '/user/acadgild/project/male';

STORE E_female INTO '/user/acadgild/project/female';

