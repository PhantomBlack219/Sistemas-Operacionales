#!/bin/bash

#crear archivo
touch archivo.txt
# leer ls -la del archivo
antes=$(ls -la archivo.txt)
echo "Permisos, usaurio y grupo antes: $antes"
# Asignar los argumentos a variables con nombres descriptivos
permisos=$1
usuario=$2
grupo=$3

# Cambiar los permisos del archivo usando chmod
chmod $permisos archivo.txt

# Cambiar el usuario y el grupo del archivo usando chown
chown $usuario:$grupo archivo.txt

despues=$(ls -la archivo.txt)
# Mostrar un mensaje de confirmación
echo "Permisos, usaurio y grupo antes: $despues"

echo "El archivo ha sido modificado con exito."
#borrar el archivo
rm archivo.txt