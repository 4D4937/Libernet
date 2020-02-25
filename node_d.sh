#!/bin/bash
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }
apt update
apt install subversion build-essential libssl-dev autoconf -y
wget https://github.com/4D4937/Libernet_build/raw/master/N2_d
chmod 777 N2_d
read -p "local_ip:" ip1
read -p "dc_ip:port:" ip2
./N2_d -a $ip1 -c liber -k liberplus -l $ip2
