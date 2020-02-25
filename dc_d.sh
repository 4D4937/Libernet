#!/bin/bash
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }
apt update
apt install subversion build-essential libssl-dev autoconf -y
wget https://github.com/4D4937/Libernet_build/raw/master/N1_d
chmod 777 N1_d
read -p "port:" port
clean
./N1_d $port -f -v
