#!/bin/bash

# Pętla for

for i in {1..5}; do
    echo "Iteracja $i"
done

# Pętla while

echo -e "\nPętla while:"
licznik=1
while [ $licznik -le 5 ]; do
    echo "Iteracja $licznik"
    ((licznik++))
done