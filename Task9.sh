#!/bin/bash
# Proste menu w Bashu

while true; do
    clear
    echo "=== MENU ==="
    echo "1. Wyświetl datę"
    echo "2. Wyświetl listę plików"
    echo "3. Sprawdź użycie dysku"
    echo "4. Sprawdź użycie pamięci"
    echo "0. Wyjśćie"
    echo "============"

    read -p "Wybierz opcję: " opcja

    case $opcja in
        1)
            date
            ;;
        2)
            ls -la
            ;;
        3)
            df -h
            ;;
        0)
            echo "Do widzenia!"
            exit 0
            ;;
        *)
            echo "Nieprawidłowa opcja"
            ;;
    esac

    read -p "Naciśnij Enter, aby kontynuować..."
done