#!/bin/bash

touch archivo1.txt
echo "Hola mundo" >> archivo1.txt
touch archivo2.txt
echo "Hola mundo" >> archivo2.txt
echo "este es el archivo 2" >> archivo2.txt
# Asignar los argumentos a variables con nombres descriptivos
archivo1=$1
archivo2=$2

# Usar el comando file para mostrar el tipo de archivo
echo "Tipo de archivo de $archivo1:"
file $archivo1
echo "Tipo de archivo de $archivo2:"
file $archivo2

# Usar el comando cmp para comparar los archivos a nivel de bytes
echo "Comparación de bytes entre $archivo1 y $archivo2:"
cmp $archivo1 $archivo2

# Usar el comando diff para comparar los archivos a nivel de líneas
echo "Comparación de líneas entre $archivo1 y $archivo2:"
diff $archivo1 $archivo2

#eliminamos ambos archivos 

rm archivo1.txt
rm archivo2.txt
