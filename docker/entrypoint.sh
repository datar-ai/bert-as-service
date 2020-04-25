#!/bin/bash
set -x
while $1
do
  echo "ENTRYPOINT arguments:" + $1
  if [ "$1" = 'bash' ]; then
    bash
  else
    bert-serving-start -http_port 8001 -num_worker=1 -model_dir /app/uncased_L-12_H-768_A-12/ $1
  fi
done
