#! /bin/bash

echo "Atualizando o Servidor Ubuntu:"

apt-get update -y
apt-get upgrade -y

echo "Instalando aplicativos:"

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando HTML:"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Transferindo para pasta do Apache:"

cd linux-site-dio-main
cp -R * /var/www/html/
