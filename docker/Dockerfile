#FROM tensorflow/tensorflow:1.12.3-gpu-py3
FROM tensorflow/tensorflow:1.12.3-py3
RUN pip install bert-serving-server
RUN cat /etc/lsb-release
RUN apt update
RUN apt install wget
RUN wget https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-24_H-1024_A-16.zip
RUN unzip uncased_L-24_H-1024_A-16.zip
COPY ./ /app
RUN pip list -v
RUN ls /usr/local/lib/python3.5/dist-packages/bert_serving_server-1.10.0.dist-info
COPY ./docker/entrypoint.sh /app
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD []


