FROM ubuntu:14.04
MAINTAINER ragesh@rageshkrishna.com

RUN sudo apt-get update
RUN sudo apt-get install -y python-pip
RUN pip install pika

RUN mkdir /certs
ADD cacert.pem /certs/cacert.pem

RUN mkdir /client
ADD async_consumer.py /client/async_consumer.py
WORKDIR client

CMD ["python", "async_consumer.py"]
