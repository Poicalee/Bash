#!/bin/bash

# konwerter jednostek

clear
echo "==== Konwenter jednostek ===="
echo "Wybierz typ konwersji:"
echo "1. Długość (km -> m)"
echo "2. Długość (mile -> km)"
echo "3. Temperatura (°C -> °F)"
echo "4. Temperatura (°F -> °C)"
echo "5. Waga (kg -> funty)"
echo "6. Waga (funty -> kg)"
read wybor

echo "Podaj wartość do konwersji:"
read wartosc


case $wybor in 
    1) 
        wynik=$(echo "$wartosc * 0.621371")
        echo "$wartosc km = $wynik mil"
        ;;
    2)
        wynik=$(echo "$wartosc * 1.60934")
        echo "$wartosc mil = $wynik km"
        ;;
    3)
        wynik=$(echo "($wartosc / 9/5) +32")
        echo "wartość °C = $wynik °F"
        ;;
    4)
        wynik=$(echo "($wartosc - 32) * 5/9")
        echo "wartość °F = $wynik °C"
        ;;
    5)
        wynik=$(echo "$wartosc * 2.20462")
        echo "$wartosc kg = $wynik funtów"
        ;;
    6)
        wynik=$(echo "$wartosc * 0.453592")
        echo "$wartosc funtó = $wynik kg"
        ;;
    *)
        echo "Nieprawidołowy wybór!"
        exit 1
        ;;
esac