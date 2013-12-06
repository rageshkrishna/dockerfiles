FROM ubuntu:12.04
MAINTAINER ragesh@rageshkrishna.com


RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe restricted multiverse" >> /etc/apt/sources.list && \
    apt-get install -y python-software-properties software-properties-common openssh-server 
RUN apt-add-repository -y ppa:nginx/stable && apt-get update
RUN apt-get install -y nginx python-dev build-essential python-pip
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN /usr/bin/pip install supervisor

ADD supervisor.conf /
ADD start.sh /

RUN chmod +x /start.sh && \
    mkdir /var/run/sshd && \
    echo 'root:f!zzb!n' | chpasswd

EXPOSE 22 80

CMD /start.sh
