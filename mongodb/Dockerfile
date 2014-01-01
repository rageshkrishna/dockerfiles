FROM ubuntu:12.04
MAINTAINER ragesh@rageshkrishna.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe restricted multiverse" >> /etc/apt/sources.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list && \
    apt-get update

RUN dpkg-divert --local --rename --add /sbin/initctl && \
    ln -s /bin/true /sbin/initctl && \
    apt-get install -y mongodb-10gen openssh-server python-software-properties software-properties-common python-dev build-essential python-pip vim && \
    /usr/bin/pip install supervisor && \
    echo 'root:f!zzb!n' | chpasswd


ADD supervisor.conf /
ADD start.sh /

RUN chmod +x /start.sh && \
    mkdir -p /var/run/sshd /data/db

EXPOSE 27017 22

CMD /start.sh 
