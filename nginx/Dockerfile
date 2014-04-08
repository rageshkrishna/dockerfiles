FROM ubuntu:12.04
MAINTAINER ragesh@rageshkrishna.com

RUN apt-get update
RUN apt-get install -y python-software-properties software-properties-common
RUN apt-add-repository -y ppa:nginx/stable && apt-get update
RUN apt-get update
RUN apt-get install -y nginx

EXPOSE 80 443
ENTRYPOINT /usr/sbin/nginx -c /config/nginx.conf
