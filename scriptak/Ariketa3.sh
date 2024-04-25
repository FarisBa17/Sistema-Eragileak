#!/bin/bash

# Eskatu erabiltzaileari bi izenak jartzeko terminaletik.
echo "Idatzi lehen izena: "
read izena1

echo "Idatzi bigarren izena"
read izena2

# Izenak berdinak direla zihurtatu
if [ "$izena1" = "$izena2" ]; then
echo "Izenak berdinak dira."
else
echo "Izenak desberdinak dira."
fi