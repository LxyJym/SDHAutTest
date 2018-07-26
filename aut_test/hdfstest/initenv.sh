#!/bin/sh
if [ -d "/tmp/auttest/" ];then
 rm -r /tmp/auttest/
 mkdir /tmp/auttest/
else
 mkdir /tmp/auttest/
fi
mkdir /tmp/auttest/auttest
cp gendata/HDFStest.docx /tmp/auttest/ 
sh ../common/print.sh "hdfs initenv is ok"
