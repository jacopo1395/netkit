for i in {2..23}; do
    printf "1.0.0."$i" \t"
    ping -q -c 1 1.0.0."$i" &> /dev/null && echo online || echo offline
done


for i in {2..13}; do
    printf "30.0.1."$i" \t"
    ping -q -c 1 30.0.1."$i" &> /dev/null && echo online || echo offline
done

for i in {2..7}; do
    printf "20.0.1."$i" \t"
    ping -q -c 1 20.0.1."$i" &> /dev/null && echo online || echo offline
done


for i in {1..3}; do
    for j in 1 100; do
        printf "10.0."$i"."$j"\t"
        ping -q -c 1 10.0."$i"."$j"  &> /dev/null && echo online || echo offline

    done
done

printf "192.168.1.1 \t"
ping -q -c 1 192.168.1.1  &> /dev/null && echo online || echo offline

printf "192.168.1.100 \t"
ping -q -c 1 192.168.1.100 &> /dev/null && echo online || echo offline


printf "10.0.4.250 \t"
ping -q -c 1 10.0.4.250  &> /dev/null && echo online || echo offline

printf "10.0.4.1 \t"
ping -q -c 1 10.0.4.1 &> /dev/null && echo online || echo offline
