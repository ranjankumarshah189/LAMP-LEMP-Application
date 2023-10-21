#!/bin/bash

# Set the MySQL root password
MYSQL_ROOT_PASSWORD="awsterrabyte@1227"

# Update package repositories
sudo apt update

# Install MySQL Server
sudo apt install -y mysql-server

# Start MySQL service
sudo systemctl start mysql

# Enable MySQL to start on boot
sudo systemctl enable mysql

# Set up MySQL secure installation with predefined responses
sudo mysql_secure_installation <<EOF
$MYSQL_ROOT_PASSWORD
n
n
n
n
n
EOF

# Display MySQL version
mysql --version

echo "MySQL installation and setup complete."

sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY '$MYSQL_ROOT_PASSWORD'; FLUSH PRIVILEGES;"

echo "MySQL installation and setup complete."
