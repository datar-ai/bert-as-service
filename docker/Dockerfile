FROM tensorflow/tensorflow:1.12.3-gpu-py3
#FROM tensorflow/tensorflow:1.12.3-py3
RUN pip install bert-serving-server
RUN cat /etc/lsb-release
RUN apt update
RUN apt install wget
#RUN wget https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-24_H-1024_A-16.zip
RUN wget https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip
#RUN unzip uncased_L-24_H-1024_A-16.zip
RUN unzip uncased_L-12_H-768_A-12.zip
RUN mkdir /app
#RUN mv uncased_L-24_H-1024_A-16 /app
RUN mv uncased_L-12_H-768_A-12 /app
#RUN bert-serving-start -model_dir /tmp/english_L-12_H-768_A-12/ -num_worker=4 
RUN wget https://github.com/datar-ai/bert-as-service/raw/master/docker/entrypoint.sh
RUN mv ./entrypoint.sh /app
RUN chmod 777 /app/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD []

