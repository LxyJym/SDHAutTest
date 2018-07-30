#!/bin/sh
../common/printpre.sh hdfs mkdir
hadoop fs -test -e /auttest/
if [ $? -eq 0 ]; then
    hdfs dfs -rm  -r  /auttest/
    hdfs dfs -mkdir /auttest/
    ../common/printresult.sh 'hdfs' 'mkdir' $?
else
      hdfs dfs -mkdir /auttest/
     ../common/printresult.sh 'hdfs' 'mkdir' $?
fi
sleep 1
../common/printpre.sh hdfs put
hdfs dfs -put /tmp/auttest/HDFStest.docx /auttest/
../common/printresult.sh 'hdfs' 'put' $?
../common/printpre.sh hdfs copy
hdfs dfs -cp /auttest/HDFStest.docx /auttest/hdfstest.docx
../common/printresult.sh 'hdfs' 'copy' $?
../common/printpre.sh hdfs download
hdfs dfs -get /auttest/HDFStest.docx /tmp/auttest/auttest/
../common/printresult.sh 'hdfs' 'download' $?

