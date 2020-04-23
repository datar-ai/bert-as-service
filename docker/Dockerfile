#FROM tensorflow/tensorflow:1.12.3-gpu-py3
FROM tensorflow/tensorflow:1.12.3-py3
RUN pip install bert-serving-server
RUN pip list -v
COPY ./ /app
COPY ./docker/entrypoint.sh /app
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD []

