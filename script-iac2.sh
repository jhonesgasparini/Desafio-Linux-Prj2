#!/bin/bash 

echo "Atualizando o servidor"
apt-get update -y 
apt-get upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Baixando e Copiando os arquivos da Aplicação"

cd /tmp
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/


