#!/bin/bash

spath=https://raw.githubusercontent.com/Tsher/vultr/master/
script="gitlab jsbin suchblog"

# install nginx
apt-get install nginx -y

# enter sites-available
cd ../
for i in $script; do
        wget $spath$i
        ln -s "/etc/nginx/sites-available/$i" "/etc/nginx/sites-enabled/$i"
done
service nginx start