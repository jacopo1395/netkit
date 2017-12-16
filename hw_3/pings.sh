for i in {2..23}; do
    printf "1.0.0."$i" \t"
    ping -q -c 1 1.0.0."$i" &> /dev/null && echo online || echo offline
done
