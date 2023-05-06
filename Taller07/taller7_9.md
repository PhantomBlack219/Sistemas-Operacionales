### 9. Automatice con crontab el script 7 y 8, el script 7 se debe ejecutar cada 5 minutos y el script 8 cada minuto

* Abrir el archivo de configuración de crontab con el comando crontab -e.
* Agregar la siguiente línea al final del archivo para ejecutar el script p7.sh cada 5 minutos: */5 * * * * /taller07/p7.sh
* Agregar la siguiente línea al final del archivo para ejecutar el script p8.sh cada minuto: * * * * * /taller07/p8.sh
* Guardar y cerrar el archivo de configuración de crontab con :wq.
