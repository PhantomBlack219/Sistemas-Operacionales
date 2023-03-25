#!/bin/bash

which bash

cd Taller2
vector1=$(cat archivo1)
vector2=$(cat archivo2)

vector3=$(echo "$vector1 $vector2")

suma=0
for i in $vector3; do
    suma=$((suma + i))
done

echo "la suma de los vectores es: $suma" > archivo3
