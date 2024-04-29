#!/bin/bash

# Funtzioa definitu emaitza kalkulatzeko
kalkulatu_emaitza() {
    # Erabilera: kalkulatu_emaitza <zenbaki1> <eragiketa> <zenbaki2>
    # Eragiketak: +, -, *, /
    zenbaki1=$1
    eragiketa=$2
    zenbaki2=$3
    case $eragiketa in
        "+")
            echo $(echo "scale=2; $zenbaki1 + $zenbaki2" | bc)
            ;;
        "-")
            echo $(echo "scale=2; $zenbaki1 - $zenbaki2" | bc)
            ;;
        "*")
            echo $(echo "scale=2; $zenbaki1 * $zenbaki2" | bc)
            ;;
        "/")
            echo $(echo "scale=2; $zenbaki1 / $zenbaki2" | bc)
            ;;
        *)
            echo "Eragiketa ezezaguna: $eragiketa"
            ;;
    esac
}

# Balioak eskatu erabiltzaileari
read -p "Sartu lehenengo zenbakia: " zenbaki1
read -p "Sartu eragiketa (+, -, *, /): " eragiketa
read -p "Sartu bigarren zenbakia: " zenbaki2

# Emaitza kalkulatu eta pantailaratuko
echo "Emaitza: $(kalkulatu_emaitza $zenbaki1 $eragiketa $zenbaki2)"