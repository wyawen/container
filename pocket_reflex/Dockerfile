FROM ubuntu:16.04

# set environment vars
ENV CRAIL_HOME /root/crail/
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# install packages
RUN \
  apt-get update && apt-get install -y \
  ssh \
  rsync \
  vim \
  openjdk-8-jdk \
  net-tools iputils-ping

WORKDIR /root/crail
COPY crail/crail-deployment/crail-apache  /root/crail


COPY ./reflex /root/reflex
COPY ./libconfig /root/libconfig

WORKDIR /root/reflex

# Install dependencies for DPDK
RUN apt-get update && apt-get install -y build-essential automake python-pip libcap-ng-dev gawk pciutils net-tools

# Install dependencies for ReFlex
RUN apt-get install -y libconfig-dev libnuma-dev libpciaccess-dev libaio-dev libevent-dev g++-multilib

# Install dependencies for loading kernel modules
RUN apt-get install -y kmod 

# Add libconfig (required for ReFlex) to library path 
#RUN echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/libconfig/lib/.libs" >> ~/.bashrc

# Start ReFlex
CMD ["/bin/bash"]
#CMD bash start_reflex.sh


