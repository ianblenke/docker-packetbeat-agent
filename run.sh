#!/bin/bash
cd /tmp
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
gunzip GeoIP.dat.gz
mkdir -p /usr/local/share/GeoIP/
mv GeoIP.dat /usr/local/share/GeoIP/
exec packetbeat -e -c /etc/packetbeat/packetbeat.conf
