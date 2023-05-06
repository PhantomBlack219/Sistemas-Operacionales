#!/bin/bash

# Usar el comando uname para obtener el nombre del sistema operativo
SO=$(uname -s)

# Usar el comando uname para obtener la arquitectura de la máquina
ARCH=$(uname -m)

# Usar el comando uname para obtener la versión del kernel
KERNEL=$(uname -r)

# Imprimir la información obtenida
echo "Sistema Operativo: $SO"
echo "Arquitectura de la máquina: $ARCH"
echo "Versión del kernel: $KERNEL"
