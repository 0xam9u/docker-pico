FROM php:7.4-apache
MAINTAINER Jon Alonso <jalonso.dev@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN LC_ALL=C.UTF-8 && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install wget && \
    apt-get -y autoremove && \
    apt-get -y clean

WORKDIR /var/www/html

RUN wget https://github.com/picocms/Pico/releases/download/v2.1.4/pico-release-v2.1.4.tar.gz
RUN tar -xzf pico-release-v2.1.4.tar.gz && rm pico-release-v2.1.4.tar.gz

EXPOSE 80
