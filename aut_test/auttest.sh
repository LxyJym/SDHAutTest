#!/bin/sh
if [ -f "common/summary.txt" ]
then
 rm -rf common/summary.txt
else
 :
fi
touch common/summary.txt
sh common/print.sh "hdfs test start--------------------"
cd hdfstest
sh initenv.sh
sh runtest.sh
cd ..
sh common/print.sh "hdfs test end----------------------"
sh common/print.sh "mr2 test start---------------------"
cd mrtest
sh initenv.sh
sh runtest.sh
cd ..
sh common/print.sh "mr2 test end-----------------------"
sh common/print.sh "hive test start--------------------"
cd hivetest
sh initenv.sh
sh runtest.sh
cd ..
sh common/print.sh "hive test end-----------------------"
sh common/print.sh "hbase test start--------------------"
cd hbasetest
sh runtest.sh
cd ..
sh common/print.sh "hbase test end----------------------"
cat common/summary.txt
