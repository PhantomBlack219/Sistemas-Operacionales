#!/bin/bash

which bash
cd /
cd home
mkdir -p Taller2
cd Taller2

for i in {1..5}; do
       	vector1[$i]=$((RANDOM % 10 + 1 ))
	vector2[$i]=$((RANDOM % 10 + 1 ))
done

touch archivo1 archivo2
echo "${vector1[@]}" > archivo1
echo "${vector2[@]}"  > archivo2
