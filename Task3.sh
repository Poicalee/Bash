#!/bin/bash
#Interakcja z użytkownikiem
echo "Jak masz na imię?"
read imie
echo "Ile masz lat?"
read wiek
echo "Cześć $imie! Za 10 lat będziesz mieć $((wiek+10)) lat."