for traffic in 0 4 8; do
    for load in 1 2 3 4 5 6 7 8 9 10; do
        ./cmesh 4 "$load" 0 10000 "$traffic"
    done
done