FROM phusion/baseimage:0.9.15
MAINTAINER Ian blenke <ian@blenke.com>

RUN apt-get update
RUN apt-get -y -q install libpcap0.8

RUN curl -L -o /tmp/packetbeat_amd64.deb https://github.com/packetbeat/packetbeat/releases/download/v0.4.2/packetbeat_0.4.2-1_amd64.deb
RUN dpkg -i /tmp/packetbeat_amd64.deb
ADD packetbeat.conf /etc/packetbeat/packetbeat.conf
