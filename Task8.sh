#!/bin/bash
# Poprawione użycie argumentów

if [ $# -eq 0 ]; then
    echo "Nie podano żadnych argumentów!"
    echo "Użycie: $0 argument1 [argument2 ...]"
    exit 1
fi

echo "Liczba argumentów: $#"
echo "Wszystkie argumenty: $*"
echo "Pierwszy argument: $1"

# Poprawnie - używamy "$@" w cudzysłowach
echo -e "\nWszystkie argumenty w pętli:"
for arg in "$@"; do
    echo "- $arg"
done

##./Task8.sh "argument pierwszy" argument2 "argument trzeci z spacjami"