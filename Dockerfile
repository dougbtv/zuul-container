FROM centos:centos7
MAINTAINER @dougbtv
ENV BUILD_DATE 2017-05-16
RUN yum install -y epel-release
RUN yum install -y python-pip gcc openssl-devel libffi-devel python-devel
RUN pip install --upgrade pip
RUN pip install zuul
RUN mkdir -p /var/lib/zuul/times
ADD zuul.conf /etc/zuul/zuul.conf
ADD layout.yaml /etc/zuul/layout.yaml
