FROM ubuntu:12.04
MAINTAINER ragesh@rageshkrishna.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe restricted multiverse" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y wget && \
    wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc && \
    apt-key add rabbitmq-signing-key-public.asc && \
    echo "deb http://www.rabbitmq.com/debian testing main" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y openssh-server python-software-properties software-properties-common python-dev build-essential python-pip vim && \
    /usr/bin/pip install supervisor && \
    echo 'root:f!zzb!n' | chpasswd

RUN dpkg-divert --local --rename --add /sbin/initctl && \
    ln -s /bin/true /sbin/initctl

RUN apt-get install -qq -y rabbitmq-server 

ADD supervisor.conf /
ADD start.sh /

RUN chmod +x /start.sh && \
    mkdir -p /var/run/sshd


EXPOSE 5672 22

CMD /start.sh 
