#!/bin/bash
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }
apt update
apt install subversion build-essential libssl-dev autoconf -y
wget https://github.com/4D4937/Libernet/raw/master/N1
chmod 777 N1
read -p "port:" port
./N1 -l $port -f -v
