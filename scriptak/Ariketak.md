
- [Ariketa 1](#ariketa-1)
- [Ariketa 2](#ariketa-2)
- [Ariketa 3](#ariketa-3)
- [Ariketa 4](#ariketa-4)
- [Ariketa 5](#ariketa-5)
- [Ariketa 6](#ariketa-6)
- [Ariketa 7](#ariketa-7)


# Ariketa 1

```bash
#!/bin/bash

clear

echo "zure erabiltzailea"
whoami

echo "zure direktorioa"
pwd 
```


# Ariketa 2 

```bash
#!/bin/bash

echo "sartu urte bat"

read URTEA

echo "sartu hilabete bat"

read HILABETEA

cal $HILABETEA $URTEA
```


# Ariketa 3

```bash
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
```


# Ariketa 4

```bash
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
read -r -p "Sartu lehenengo zenbakia: " zenbaki1
read -r -p "Sartu eragiketa (+, -, *, /): " eragiketa
read -r -p "Sartu bigarren zenbakia: " zenbaki2

# Emaitza kalkulatu eta pantailaratuko
echo "Emaitza: $(kalkulatu_emaitza "$zenbaki1" "$eragiketa" "$zenbaki2")"
```


# Ariketa 5

```bash
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
```


# Ariketa 6

```bash
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
```

# Ariketa 7

```bash
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
    read -p "Jarraitu ahal duzu [ENTER] sakatuz..."
    clear
done
```