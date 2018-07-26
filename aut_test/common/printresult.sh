#!/bin/sh
se=$1
fu=$2
re=$3
if [ $re -eq 0 ]
then
 echo  "`date "+%y/%m/%d %H:%M:%S"` - $se $fu test succeed"
 echo  "$se $fu test ----------[success]"  >> ../common/summary.txt
else
 echo  "`date "+%y/%m/%d %H:%M:%S"` - $se $fu test fail"
 echo  "$se $fu test ----------[failure]" >> ../common/summary.txt
fi
