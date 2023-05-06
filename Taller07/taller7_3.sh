#!/bin/bash

# Añadir el alias al final del archivo de configuración
echo "alias ll='ls -la'" >> ~/$config

# Mostrar un mensaje de confirmación
echo "El alias ha sido creado con éxito."
echo "Por favor comprobar con ll taller7_2.sh"

# De esta forma añadimos el alias ll para poder llamar mas facilmente el comando ls -la y al 
