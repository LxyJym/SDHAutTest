#!/bin/sh
../common/printpre.sh kafka create_topic
java -jar jarfile/kafkaauttest_topic.jar
../common/printresult.sh 'kafka' 'create_topic' $?
../common/printpre.sh kafka producer
java -jar jarfile/kafkaauttest_producer.jar
../common/printresult.sh 'kafka' 'producer' $?
../common/printpre.sh kafka consumer
java -jar jarfile/kafkaauttest_consumer.jar
../common/printresult.sh 'kafka' 'consumer' $?
