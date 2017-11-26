#!/bin/bash

touch ./deamons
echo "zebra=yes
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
ldpd=no" > ./deamons

for i in {1..12}; do
    mkdir -p r"$i"/etc/network
    mkdir r"$i"/etc/quagga

    touch r"$i"/etc/network/interfaces
    cp deamons r"$i"/etc/quagga/deamons
    touch r"$i"/etc/quagga/ospfd.conf
    touch r"$i"/etc/quagga/zebra.conf
done


mkdir -p s1/etc/network
touch s1/etc/network/interfaces

mkdir -p s2/etc/network
touch s2/etc/network/interfaces

mkdir -p pc/etc/network
touch pc/etc/network/interfaces

rm ./deamons
