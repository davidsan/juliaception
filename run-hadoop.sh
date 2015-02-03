#!/bin/bash

HADOOP_HOME=/usr/local/Cellar/hadoop/2.6.0/
HADOOP_STREAMING_JAR=hadoop-streaming-2.6.0.jar

HSTREAMING="hadoop jar $HADOOP_STREAMING_JAR"

$HSTREAMING \
  -mapper  'julia map.jl' \
  -reducer 'julia reduce.jl' \
  -file map.jl \
  -file reduce.jl \
  -input 'input/*' \
  -output output
