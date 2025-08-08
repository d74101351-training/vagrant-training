#!/bin/bash

# Install mysql
apt install -y mysql-server
service mysql status
sudo mysql -u root -e "SHOW DATABASES";