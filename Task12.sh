#!/bin/bash
# Kalkulator w bashu

clear
echo "==== Kalkulator w Bashu ===="
echo "Podaj pierwszą liczbę:"
read liczba1
echo "Podaj drugą liczbę:"
read liczba2
echo "Wybierz operacje"
echo "1. Dodawanie"
echo "2. Odejmowanie"
echo "3. Mnożenie"
echo "4. Dzielenie"
read operacja

case $operacja in
    1)
         wynik=$(($liczba1 + $liczba2))
        znak="+"
        ;;
    2)
         wynik=$(($liczba1 - $liczba2))
        znak="-"
        ;;
    3)
        wynik=$(($liczba1 * $liczba2))
        znak="*"
        ;;
    4)
        if [ "$liczba2" == "0" ]; then
            echo "Błąd: Nie można dzielić przez zero!"
            exit 1
        fi
        wynik=$(echo "scale=2; $liczba1 / $liczba2")
        znak="/"
        ;;
    *)
        echo "Błąd: Nieznana operacja!"
        exit 1
        ;;
esac

echo "Wynik: $liczba1 $znak $liczba2 = $wynik"