FROM ubuntu:14.04
MAINTAINER ragesh@rageshkrishna.com

RUN apt-get update
RUN apt-get install -y build-essential libc6 libexpat1 libgd3 libgeoip1 libpam0g libpcre3 libpcre3-dev libssl1.0.0 libssl-dev libxml2 libxslt1.1 nginx-common zlib1g wget 
RUN wget http://nginx.org/download/nginx-1.7.3.tar.gz
RUN tar xvf nginx-1.7.3.tar.gz
WORKDIR /nginx-1.7.3
RUN ./configure --sbin-path=/usr/local/sbin --with-http_ssl_module
RUN make
RUN sudo make install
WORKDIR /

EXPOSE 80 443
ENTRYPOINT /usr/local/sbin/nginx -c /config/nginx.conf
