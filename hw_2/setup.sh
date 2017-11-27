#!/bin/bash

touch ./daemons
echo "zebra=yes
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
ldpd=no" > ./daemons

for i in {1..11}; do
    mkdir -p r"$i"/etc/network
    mkdir r"$i"/etc/quagga

    touch r"$i"/etc/network/interfaces
    cp daemons r"$i"/etc/quagga/daemons
    touch r"$i"/etc/quagga/ospfd.conf
    touch r"$i"/etc/quagga/zebra.conf

    touch r"$i".startup
    echo "/etc/init.d/networking restart
/etc/init.d/quagga restart" > r"$i".startup
done


for i in {1..2}; do
    mkdir -p s"$i"/etc/network
    touch s"$i"/etc/network/interfaces
    touch s"$i".startup
    echo "/etc/init.d/networking restart" > s"$i".startup
done


mkdir -p pc/etc/network
touch pc/etc/network/interfaces
touch pc.startup
echo "/etc/init.d/networking restart" > pc.startup


rm ./daemons
