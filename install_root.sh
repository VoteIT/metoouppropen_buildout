#!/bin/bash
#Ment to be run as root after buildout is done. Will obtain cert and install on nginx debian

cd /etc/nginx
ln -s /home/voteit/srv/metoouppropen_buildout/etc/nginx.conf ./sites-available/metoouppropen.conf
cd sites-enabled
ln -s ../sites-available/metoouppropen.conf

service nginx stop
certbot certonly --standalone -d metoouppropen.voteit.se
service nginx start
