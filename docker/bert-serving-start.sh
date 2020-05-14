#!/bin/bash
set -x
echo "CMD arguments:" $1 $2
if [ "$1" = "bash" ]
then
  bash
elif [ "$1" = "chinese" ]
then
  bert-serving-start -http_port 8001 -num_worker=1 -model_dir /app/chinese_L-12_H-768_A-12 $2 $3 $4 $5 $6
elif [ "$1" = "base" ]
then
  bert-serving-start -http_port 8001 -num_worker=1 -model_dir /app/uncased_L-12_H-768_A-12 $2 $3 $4 $5 $6
elif [ "$1" = "large" ]
then
  bert-serving-start -http_port 8001 -num_worker=1 -model_dir /app/uncased_L-24_H-1024_A-16 $2 $3 $4 $5 $6
else
  bert-serving-start -http_port 8001 -num_worker=1 -model_dir $1 $2 $3 $4 $5 $6
fi
