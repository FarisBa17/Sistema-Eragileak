#!/bin/bash

# 5 Ariketa

# Fitxategiaren izena eskatu
read -p "Idatzi fitxategiaren izena: " fitxategia

# Fitxategiaren existentzia egiaztatu
if [ -e "$fitxategia" ]; then
    echo "$fitxategia existitzen da."
    # Irakurtzeko baimena egiaztatu
    if [ -r "$fitxategia" ]; then
        echo "$fitxategia irakurtzeko baimena dauka."
    else
        echo "$fitxategia ez dauka irakurtzeko baimenik."
    fi
    # Idazteko baimena egiaztatu
    if [ -w "$fitxategia" ]; then
        echo "$fitxategia idazteko baimena dauka."
    else
        echo "$fitxategia ez dauka idazteko baimenik."
    fi
    # Exekutatzeko baimena egiaztatu
    if [ -x "$fitxategia" ]; then
        echo "$fitxategia exekutatzeko baimena dauka."
    else
        echo "$fitxategia ez dauka exekutatzeko baimenik."
    fi
else
    echo "$fitxategia ez da existitzen."
fi