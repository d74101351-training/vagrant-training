#!/bin/bash

# Install Apache
apt install -y apache2
systemctl enable apache2
systemctl stop apache2
rm -rf /var/www/html
ln -s /vagrant /var/www/html
systemctl start apache2

# Install PHP
apt install -y php libapache2-mod-php
apt install -y php-cli
apt install -y php-cgi
apt install -y php-mysql
systemctl restart apache2.service 

# Download Starter Content from GitHub
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/d74101351-training/vagrant-training/refs/heads/main/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/d74101351-training/vagrant-training/refs/heads/main/files/info.php

systemctl restart apache2.service