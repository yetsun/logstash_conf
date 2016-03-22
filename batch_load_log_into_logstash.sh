#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo 'parameters: <LOGSTASH_HOME> <DATA_FILE_DIR>'
  exit 1
fi

LOGSTASH_HOME=$1
DATA_FILE_DIR=$2

echo "LOGSTASH_HOME: $LOGSTASH_HOME"
echo 'DATA_FILE_DIR: $DATA_FILE_DIR'

for log_file in `ls $DATA_FILE_DIR`
do
  echo $DATA_FILE_DIR/$log_file
  $LOGSTASH_HOME/bin/logstash -f $LOGSTASH_HOME/logstash_logfile.conf < $DATA_FILE_DIR/$log_file
done
