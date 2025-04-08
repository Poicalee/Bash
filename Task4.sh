#!/bin/bash
# Instrukcje warunkowe
echo "Podaj liczbę:"
read liczba

if [ $liczba -gt 10 ]; then
    echo "Liczba jest większa od 10"
elif [ $liczba -eq 10 ]; then
    echo "Liczba jest równa 10"
else
    echo "Liczba jest mniejsza od 10"
fi    