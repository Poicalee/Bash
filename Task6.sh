#!/bin/bash
# Definicja i użycie funkcji

# Definicja funkcji
powitanie(){
    echo "Cześć $1! Miło Cię poznać."
}

oblicz_kwadrat() {
    local wynik=$(($1 * $1))
    echo "Kwadrat liczby $1 to $wynik"
}

# Wywołanie funkcji
powitanie "Karol"
oblicz_kwadrat 5