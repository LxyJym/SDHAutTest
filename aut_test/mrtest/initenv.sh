#!/bin/sh
hadoop fs -test -e /mrauttest/
if [ $? -eq 0 ]; then
    hdfs dfs -rm  -r  /mrauttest/
else
    :
fi
hdfs dfs -mkdir /mrauttest/
hdfs dfs -mkdir /mrauttest/mrinput
sleep 1
if [ -d "/tmp/mrauttest/" ];then
 rm -r /tmp/mrauttest/
 mkdir /tmp/mrauttest/
else
 mkdir /tmp/mrauttest/
fi
cp gendata/mrtest.txt /tmp/mrauttest/
cp jarfile/mr2test.jar /tmp/mrauttest/
hdfs dfs -put /tmp/mrauttest/mrtest.txt /mrauttest/mrinput
if [ $? -eq 0 ]; then
    sh ../common/print.sh "mr2 initenv succeed"
else
    sh ../common/print.sh "mr2 initenv fail"
fi
