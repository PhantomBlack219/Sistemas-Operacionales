#!/bin/bash

# abrimos un archivo el cual contine el historial de comandos utilizados (no está realmente actualizado por lo qur hay un desfase)
cat ~/.bash_history > tempt.txt
# awk me permite procesar instrucciones de cadenas de texto, en este caso Imprimir una subcadena del registro actual desde la posición que devuelve index($0,$2) hasta el final, con esto me permite dejar solo la parte del codigo y posterior a esto ordenarlos
awk '{print substr($0, index($0,$2))}' tempt.txt >tempt1.txt
# ordena los comandos de forma alfabetica
sort tempt1.txt > tempt2.txt
# Usa wc para contar el número de líneas del archivo tempt1.txt y mostrarlo en la salida estándar
lineas=$(wc -l tempt1.txt)
echo "El numero total de lineas es: $lineas"

# Eliminar archivos de texto
rm tempt.txt 
rm tempt1.txt
rm tempt2.txt

