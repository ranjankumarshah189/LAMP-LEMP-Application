#!/bin/bash

# Update package repositories
sudo apt update -y

# Install PHP and required extensions
sudo apt install php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath -y

# Display PHP version
php -v

echo "PHP installation and setup complete."

sudo apt install apache2 -y

apache2 -v 

echo "Apache installation and setup complete."

# certbot installation

sudo apt install certbot python3-certbot-apache -y

