#!/bin/bash

# 7 Ariketa

#!/bin/bash

# Menua erakutsi
function menua_erakutsi() {
    echo "------ MENUA ------"
    echo "1. Karpeta tamaina ikusi"
    echo "2. Fitxategiak listatu"
    echo "3. Fitxategi bat sortu"
    echo "4. Karpeta sortu"
    echo "5. Karpeta eta fitxategiak ezabatu"
    echo "6. Irten"
    echo "--------------------"
}

# Karpeta tamaina ikusi
function karpeta_tamaina() {
    du -sh .
}

# Fitxategiak listatu
function fitxategiak_listatu() {
    ls -l
}

# Fitxategi bat sortu
function fitxategi_sortu() {
    read -p "Idatzi fitxategiaren izena: " fitxategia
    touch $fitxategia
}

# Karpeta sortu
function karpeta_sortu() {
    read -p "Idatzi karpetaaren izena: " karpeta
    mkdir $karpeta
}

# Karpeta eta fitxategiak ezabatu
function karpeta_fitxategiak_ezabatu() {
    read -p "Idatzi karpeta edo fitxategiaren izena: " izena
    rm -rf $izena
}

# Menua erakutsi
while true; do
    menua_erakutsi
    read -p "Zure aukera aukeratu (1-6): " aukera
    case $aukera in
        1) karpeta_tamaina ;;
        2) fitxategiak_listatu ;;
        3) fitxategi_sortu ;;
        4) karpeta_sortu ;;
        5) karpeta_fitxategiak_ezabatu ;;
        6) break ;;
        *) echo "Aukera okerra. Mesedez, aukeratu 1 eta 6 arteko zenbaki bat." ;;
    esac
    read -p "Jarraitu ahal duzu [ENTER] sakatuz..." input
    clear
done