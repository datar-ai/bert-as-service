#!/bin/bash
set -x
while $1
do
  echo "ENTRYPOINT arguments:" + $1
  if [ "$1" = 'bash' ]; then
    bash
  elseif [ "$1" = 'chinese' ]; then
    bert-serving-start -http_port 8001 -num_worker=1 -model_dir $1 $2
  elseif [ "$1" = 'base' ]; then
    bert-serving-start -http_port 8001 -num_worker=1 -model_dir $1 $2
  else
    bert-serving-start -http_port 8001 -num_worker=1 -model_dir $1 $2
  fi
done
