#!/bin/bash

# Update the package repositories
apt update

# Install necessary packages
apt install -y nginx

# Configure Nginx
echo "Hello, world! & Atlantis" > /var/www/html/index.html

# Start Nginx service
systemctl start nginx
systemctl enable nginx

