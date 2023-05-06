#!/bin/bash

# Define el tamaño máximo en bytes
MAX=500

# Obtiene el tamaño actual del archivo .log
size=$(stat -c%s archivo.log)

# Compara el tamaño con el límite
if [ $size -gt $MAX ]
then
  # Comprime el archivo .log con gzip después de haberse ejecutado 6 veces el taller7_7.sh, esto gracias al tamaño maximo de bytes asignado anteriormete
  gzip archivo.log
  echo "archivo comprimido con exito"
fi
