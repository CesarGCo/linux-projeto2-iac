#!/bin/bash

echo 'Atualizando sistema'
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp

echo 'Instalando aplicacao'
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
