#build singa from scratch
FROM ubuntu:14.04
MAINTAINER Anh Dinh<ug93tad@gmail.com>
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && apt-get -y install g++-4.8 build-essential git vim wget zip automake libtool man python-dev python-boto libcurl4-nss-dev libsasl2-dev maven libapr1-dev libsvn-dev openssh-server supervisor

RUN cd /opt && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz && cd /opt && tar -zxvf jdk-8u60-linux-x64.tar.gz && rm -rf jdk-8u60-linux-x64.tar.gz

COPY ssh.conf /etc/supervisor/conf.d/
COPY .bashrc /root/.bashrc
copy .vimrc /root/.vimrc

RUN cd && source /root/.bashrc && git clone https://github.com/apache/incubator-singa.git && cd incubator-singa && ./thirdparty/install.sh all && cd thirdparty/ && wget https://github.com/google/protobuf/releases/download/v2.5.0/protobuf-2.5.0.tar.gz && tar -zxvf protobuf-2.5.0.tar.gz && cd protobuf-2.5.0 && ./configure && make && make install && cd ../../ && cp thirdparty/install.sh . && rm -rf thirdparty/* && mv install.sh thirdparty/ && ./thirdparty/install.sh zookeeper && ./autogen.sh && ./configure && make && make install && cd examples/cifar10 && mv Makefile.example Makefile && make download && make create && service ssh start

