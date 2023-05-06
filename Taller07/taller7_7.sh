#!/bin/bash

#crear el archivo log
touch archivo.log

# Definir el nombre del archivo log
log="archivo.log"

# Obtener la fecha y hora actual con el formato deseado
fecha=$(date +"%d/%m/%Y %H:%M:%S")

# Obtener el nombre del host con el comando hostname
host=$(hostname)

# Obtener la carga del sistema con el comando uptime
carga=$(uptime | awk -F '[ ,]+' '{print $10,$11,$12}')

# Obtener la memoria libre con el comando free
memoria=$(free -m | awk '/Mem/ {print $4}')

# Escribir la información en el archivo log usando echo y >>
echo -e "fecha= $fecha \nhost= $host \ncarga= $carga \nmemoria= $memoria \n" >> $log
echo " información registrada con exito"

