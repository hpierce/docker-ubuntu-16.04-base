#
# Base Dockerfile
#
#
FROM ubuntu:16.04

MAINTAINER Hugh Pierce

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y software-properties-common \
    dnsutils openssh-server bash-completion vim command-not-found net-tools \
    iputils-ping git man && apt-get upgrade -y && cp /etc/skel/.bashrc /root/

