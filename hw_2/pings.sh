for i in {2..29}; do
    printf "10.0.3."$i" \t"
    ping -q -c 1 10.0.3."$i" &> /dev/null && echo online || echo offline
done

for i in {2..5}; do
    printf "10.0.3."$i" \t"
    ping -q -c 1 20.0.0."$i" &> /dev/null && echo online || echo offline
done

for i in {24..27}; do
    printf "10.0.3."$i" \t"
    ping -q -c 1 10.0.3."$i" &> /dev/null && echo online || echo offline
done

printf "192.168.2.1 \t"
ping -q -c 1 192.168.2.1 &> /dev/null && echo online || echo offline
printf "192.168.2.100 \t"
ping -q -c 1 192.168.2.100 &> /dev/null && echo online || echo offline

printf "192.168.0.1 \t"
ping -q -c 1 192.168.0.1 &> /dev/null && echo online || echo offline
printf "192.168.0.100 \t"
ping -q -c 1 192.168.0.100 &> /dev/null && echo online || echo offline

printf "192.168.3.100 \t"
ping -q -c 1 192.168.3.100 &> /dev/null && echo online || echo offline
printf "192.168.3.1 \t"
ping -q -c 1 192.168.3.1 &> /dev/null && echo online || echo offline
printf "192.168.3.250 \t"
ping -q -c 1 192.168.3.250 &> /dev/null && echo online || echo offline


printf "192.168.1.1 \t"
ping -q -c 1 192.168.1.1 &> /dev/null && echo online || echo offline
printf "192.168.1.100 \t"
ping -q -c 1 192.168.1.100 &> /dev/null && echo online || echo offline
