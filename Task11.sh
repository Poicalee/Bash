#!/bin/bash

# info_system.sh - zbiera informacje o systemie

output_file="system_info.txt"

echo "======== Informacje systemowe ========" > $output_file
echo "Data i czas: $(date)" >> $output_file
echo "Nazwa hosta: $(hostname)" >> $output_file
echo "Jądro systemu: $(uname -r)" >> $output_file 
echo "Architektura: $(uname -m)" >> $output_file
echo "">> $output_file

echo "========= Informacje o procesorze ========" >> $output_file
cat /proc/cpuinfo | grep "model name" | head -n 1 >> $output_file
echo "Liczba rdzeni: $(grep -c processor /proc/cpuinfo)" >> $output_file
echo "" >> $output_file

echo "========= Informacje o pamięci =========" >> $output_file
if command -v free &> /dev/null; then
    free -m >> $output_file
elif command -v wmic &> /dev/null; then
    echo "Całkowita pamięć fizyczna:" >> $output_file
    wmic computersystem get totalphysicalmemory >> $output_file
    echo "Dostępna pamięć:" >> $output_file
    wmic os get freephysicalmemory >> $output_file
else
    echo "Informacja o użyciu pamięci niedostępna" >> $output_file
fi
echo "" >> $output_file

 echo "========== Informacje o dysku ==========" >> $output_file
 df -h >> $output_file
 echo "Informacje zapisane do pliku $output_file"