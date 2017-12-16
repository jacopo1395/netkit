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

for i in {1..12}; do
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


for i in {1..4}; do
    mkdir -p pc"$i"/etc/network
    touch pc"$i"/etc/network/interfaces
    touch pc"$i".startup
    echo "/etc/init.d/networking restart" > pc"$i".startup
done


mkdir -p dns/etc/network
touch dns/etc/network/interfaces
touch dns.startup
echo "/etc/init.d/networking restart
/etc/init.d/quagga restart" > dns.startup


rm ./daemons
