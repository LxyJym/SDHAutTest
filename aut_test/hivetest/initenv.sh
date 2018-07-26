#!/bin/sh
if [ -d "/tmp/hive_auttest/" ];then
 rm -r /tmp/hive_auttest/
 mkdir /tmp/hive_auttest/
else
 mkdir /tmp/hive_auttest/
fi
cp gendata/hive_test.txt /tmp/hive_auttest/
echo "hive initenv is ok"
