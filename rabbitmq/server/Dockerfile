FROM ubuntu:14.04
MAINTAINER ragesh@rageshkrishna.com

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y rabbitmq-server
RUN rabbitmq-plugins enable rabbitmq_management
RUN mkdir /certs

ADD cacert.pem /certs/cacert.pem
ADD cert.pem /certs/cert.pem
ADD key.pem /certs/key.pem

ADD rabbitmq.config.ssl /etc/rabbitmq/rabbitmq.config

EXPOSE 5671 5672 15672

CMD /usr/sbin/rabbitmq-server
