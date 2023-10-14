#!/bin/bash

# Update the package repositories
apt update

# Install necessary packages
apt install -y nginx

# Configure Nginx
echo "<H1>Hello, world! & Atlantis </H1>" > /var/www/html/index.html
IP=`curl http://169.254.169.254/latest/meta-data/public-ipv4`
echo "<H2>My IP address is $IP </H2>" >> /var/www/html/index.html


# Start Nginx service
systemctl start nginx
systemctl enable nginx

