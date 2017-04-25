FROM centos:7

MAINTAINER VampOps "ops@videoamp.com"

# Set correct environment variables.
ENV	HOME /root
ENV	LANG en_US.UTF-8
ENV	LC_ALL en_US.UTF-8

RUN yum clean all; yum update -y; yum install curl

ENV JDK_VERSION 8u131
ENV JDK_BUILD_VERSION b11
ENV JDK_VERSION_UID d54c1d3a095b4ff2b6607d096fa80163

RUN curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/$JDK_VERSION_UID/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie'
RUN rpm -i jdk-$JDK_VERSION-linux-x64.rpm
RUN rm -f jdk-$JDK_VERSION-linux-x64.rpm

ENV JAVA_HOME /usr/java/default

