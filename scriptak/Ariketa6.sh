#!/bin/bash

# 6 Ariketa

echo "Fitxategiaren izena sartu: "
read izena

if [ -f "$izena" ]; then
    echo "Fitxategiaren edukia:"
    cat "$izena"
else
    echo "Fitxategia ez da existitzen."
fi