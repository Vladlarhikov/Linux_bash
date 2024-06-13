#!/bin/bash

w

hostname


echo "Устновка и обновление пакетов"
apt update && apt upgrade 

#Установка подстевки текста

echo "Установка подстевки текста"
sudo apt install grc

#Мониторинг ресурсов сервера
apt install nmon

apt install mc

echo "Установка Docker"
#Установка Docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world

#Установка GIT
sudo apt install git

#Установка VIM
sudo apt install vim

apt install net-tools

apt install ssh

echo "Сетевой адрес"
grc infconfig | grep 192.168.

