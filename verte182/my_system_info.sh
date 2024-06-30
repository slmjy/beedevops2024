#!/bin/bash

# Funkce pro červený výstup
print_red() {
   echo -e "\033[31m$@\033[0m"
}

# Tento skript vypíše základní informace o vašem systému

# Vypíše název a verzi operačního systému
print_red "Operační systém a verze:"
uname -a

# Vypíše název distribuce a verzi
print_red "Distribuce a verze:"
cat /etc/debian_version

# Vypíše informace o CPU
print_red "Informace o CPU:"
echo "$(lscpu | grep 'Model name')"

# Vypíše informace o grafické kartě
print_red "Informace o grafické kartě:" 
lspci | grep -i vga 

# Vypíše informace o zvukových zařízeních
print_red "Informace o zvukových zařízeních:" 
aplay -l

# Vypíše celkovou a volnou paměť
print_red "Informace o paměti:"
free -h

# Vypíše informace o pevných discích
print_red "Informace o discích:"
lsblk

# Vypíše počet složek v root adresáři
print_red "Počet složek v root adresáři:"
find / -maxdepth 1 -type d | wc -l

# Vypíše informace o síťových rozhraních
print_red "Síťová rozhraní:"
ip -br a

# Vypíše informace o připojených uživatelích
print_red "Připojení uživatelé:"
who

# Vypíše uptime systému
print_red "Uptime systému:"
uptime

# Vypíše počet dní do Vánoc
print_red "Počet dní do Vánoc:"
current_date=$(date +%s)
christmas_date=$(date -d "Dec 25" +%s)
days_until_christmas=$(( (christmas_date - current_date) / 86400 ))
echo "$days_until_christmas dní"

# Konec skriptu
print_red "Informace o systému byly úspěšně zobrazeny."
