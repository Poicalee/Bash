#!/bin/bash
#Operacje na plikach

#Tworzenie pliku
echo "Tworzę plik testowy..."
echo "Ala ma kota a kot ma Ale" > plik_testowy.txt

# Odczyt pliku
echo -e "\nZawartość pliku:"
cat plik_testowy.txt

# Sprawdzanie istnienia pliku
if [ -f "plik_testowy.txt" ]; then
    echo -e "\nPlik istnieje!"
else
    echo -e "\nPlik nie istniej"
fi