#!/bin/bash

#atualizando sistema operacional
sudo apt update -y
sudo apt upgrade -y
#instalando 
sudo apt install unzip -y
sudo apt install apache2 -y
#vá para a pasta temporária
cd /tmp && wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

sudo rm /var/www/html/index.html

sudo unzip /tmp/main.zip -d /tmp
sudo cp /tmp/linux-site-dio-main/* /var/www/html -r