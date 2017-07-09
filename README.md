# Titanic-Data-Analysis
Titanic Data Analysis using Flume and PIG

DATA SET DESCRIPTION
Column 1: PassengerId
Column 2: Survived (survived=0 & died=1)
Column 3: Pclass
Column 4: Name
Column 5: Sex
Column 6: Age
Column 7: SibSp
Column 8: Parch
Column 9: Ticket
Column 10: Fare
Column 11: Cabin
Column 12: Embarked

ASSOCIATED DATA FILES:
https://drive.google.com/file/d/0ByJLBTmJojjzNmV0dk1EMmwwQ1U/view?usp=sharing

PROBLEM STATEMENT:
Note: You need to copy the data set into HDFS using Flume and send the screen shot of that
with the project solution
Flume Config File: spool_dir.conf
Command to start flume process: flume-ng agent -n agent1 -f spool_dir.conf
Output Screenshots: flume_data_transaction.png; HDFS_flume_sink.png

1. In this problem statement, we will find the average fare of each class.
PIG Script File: script121.pig
Output Screenshot: Script121_Output.png

2. In this problem statement, we will find the number of people alive in each class and
embarked at Southampton.
PIG Script File: script122.pig
Output Screenshot: Script122_Output.png

3. In this problem statement, we will find out number of males and females who died in each
class.
PIG Script File: script123.pig
Output Screenshot: Script123_Output.png
