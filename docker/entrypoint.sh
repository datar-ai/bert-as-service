#!/bin/sh
bert-serving-start -num_worker=1 -model_dir /app/uncased_L-24_H-1024_A-16/
#bert-serving-start -num_worker=1 -model_dir /app/uncased_L-12_H-768_A-12/
