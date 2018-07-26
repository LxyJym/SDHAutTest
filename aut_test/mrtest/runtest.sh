#!/bin/sh
sh ../common/printpre.sh mr2 work
hadoop jar /tmp/mrauttest/mr2test.jar wordcount /mrauttest/mrinput  /mrauttest/mroutput
sh ../common/printresult.sh mr2 work $?

