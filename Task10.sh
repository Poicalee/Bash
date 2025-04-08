#!/bin/bash
# Skrypt monitorujący system - wersja dla Windows/Git Bash

log_file="system_log_$(date +%Y%m%d_%H%M%S).txt"

echo "=== Raport Systemowy - $(date) ===" > $log_file
echo "" >> $log_file

echo "== Informacje o systemie ==" >> $log_file
uname -a >> $log_file 2>/dev/null || echo "Polecenie uname niedostępne" >> $log_file
echo "" >> $log_file

echo "== Czas działania systemu ==" >> $log_file
# Alternatywa dla uptime na Windows
if command -v systeminfo &> /dev/null; then
    systeminfo | grep -i "System Boot Time" >> $log_file
elif command -v wmic &> /dev/null; then
    wmic os get lastbootuptime >> $log_file
else
    echo "Informacja o czasie działania niedostępna" >> $log_file
fi
echo "" >> $log_file

echo "== Użycie dysku ==" >> $log_file
if command -v df &> /dev/null; then
    df -h >> $log_file
elif command -v wmic &> /dev/null; then
    wmic logicaldisk get deviceid,volumename,size,freespace >> $log_file
else
    echo "Informacja o użyciu dysku niedostępna" >> $log_file
fi
echo "" >> $log_file

echo "== Użycie pamięci ==" >> $log_file
if command -v free &> /dev/null; then
    free -m >> $log_file
elif command -v wmic &> /dev/null; then
    echo "Całkowita pamięć fizyczna:" >> $log_file
    wmic computersystem get totalphysicalmemory >> $log_file
    echo "Dostępna pamięć:" >> $log_file
    wmic os get freephysicalmemory >> $log_file
else
    echo "Informacja o użyciu pamięci niedostępna" >> $log_file
fi
echo "" >> $log_file

echo "== Procesy ==" >> $log_file
if command -v ps &> /dev/null; then
    ps aux | sort -nrk 3,3 | head -n 5 >> $log_file 2>/dev/null
elif command -v tasklist &> /dev/null; then
    tasklist | head -n 10 >> $log_file
else
    echo "Informacja o procesach niedostępna" >> $log_file
fi
echo "" >> $log_file

echo "Raport został zapisany do pliku: $log_file"