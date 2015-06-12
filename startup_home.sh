#!/bin/bash

spath=https://raw.githubusercontent.com/Tsher/vultr/master/
script="gitlab jsbin suchblog"

# install nginx
apt-get install nginx -y

# enter sites-available
cd /etc/nginx/sites-available/
for i in $script; do
        wget $spath$i
        ln -s "/etc/nginx/sites-available/$i" "/etc/nginx/sites-enabled/$i"
done
rm /etc/nginx/sites-enabled/default
service nginx restart