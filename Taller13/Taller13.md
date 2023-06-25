# Taller 13

## 1. Nombre y breve descripción de la herramienta.

La herramienta se llama stress-ng y es un programa que permite generar diferentes tipos de estrés en un sistema informático. Su objetivo es ejercitar varios subsistemas físicos y las interfaces del kernel del sistema operativo. También puede medir el rendimiento del sistema bajo estrés y mostrar métricas al finalizar el test.

## 2. Comandos creados con una descripción de lo que hace y porque lo hace.

Los comandos creados son los siguientes:

- cpu: Este comando evalúa la CPU ejecutando 4 procesos que realizan cálculos intensivos durante 60 segundos. Se usa el parámetro --cpu 4 para especificar el número de procesos y el parámetro -t 60s para especificar el tiempo límite. Se usa el parámetro --metrics-brief para mostrar un resumen de las métricas de rendimiento al finalizar el test. Se usa el operador |& para redirigir la salida estándar y la salida de error al comando tee, que a su vez las muestra en la pantalla y las añade al final del archivo output$i.txt, donde $i es el número de iteración del bucle for. Se usa el comando uptime para mostrar la carga del sistema antes y después de cada ejecución del test.

```bash
#!/bin/bash

for i in 1 2 3 4 5
do
	uptime >> output$i.txt
	stress-ng --cpu 4 -t 60s --metrics-brief |& tee -a output$i.txt
	uptime >> output$i.txt
done
```

- memoria: Este comando evalúa la memoria ejecutando 4 procesos que realizan operaciones de asignación y liberación de memoria durante 60 segundos. Se usa el parámetro --malloc 4 para especificar el número de procesos y el parámetro -t 60s para especificar el tiempo límite. Se usa el parámetro --metrics-brief para mostrar un resumen de las métricas de rendimiento al finalizar el test. Se usa el operador |& para redirigir la salida estándar y la salida de error al comando tee, que a su vez las muestra en la pantalla y las añade al final del archivo output$i.txt, donde $i es el número de iteración del bucle for. Se usa el comando uptime para mostrar la carga del sistema antes y después de cada ejecución del test.

```bash
#!/bin/bash

for i in 1 2 3 4 5
do
	uptime >> output$i.txt
	stress-ng --malloc 4 -t 60s --metrics-brief |& tee -a output$i.txt
	uptime >> output$i.txt
done
```

- hilos: Este comando evalúa el manejo de proceso e hilos ejecutando 4 hilos POSIX que se crean y se unen durante 60 segundos. Se usa el parámetro --pthread 4 para especificar el número de hilos y el parámetro -t 60s para especificar el tiempo límite. Se usa el parámetro --metrics-brief para mostrar un resumen de las métricas de rendimiento al finalizar el test. Se usa el operador |& para redirigir la salida estándar y la salida de error al comando tee, que a su vez las muestra en la pantalla y las añade al final del archivo output$i.txt, donde $i es el número de iteración del bucle for. Se usa el comando uptime para mostrar la carga del sistema antes y después de cada ejecución del test.

```bash
#!/bin/bash

for i in 1 2 3 4 5
do
	uptime >> output$i.txt
	stress-ng --pthread 4 -t 60s --metrics-brief |& tee -a output$i.txt
	uptime >> output$i.txt
done
```

## 3. Ejecute los comandos 5 veces cada uno, compare los resultados y explique según su criterio el comportamiento de las pruebas.

### Cpu
![figura 1](https://github.com/PhantomBlack219/Sistemas-Operacionales/blob/main/Taller13/Imagenes/cpu.png)


Se puede observar que en cada una de las pruebas realizadas con el estresor en la cpu su rendimiento disminuía por lo que se puede analizar que el sistema no era capaz de mantener una alta frecuencia de procesamiento o que el estresor generaba una gran demanda de recursos que el sistema no podía satisfacer de igual forma que la primera.

### Memoria
![figura 2](https://github.com/PhantomBlack219/Sistemas-Operacionales/blob/main/Taller13/Imagenes/Memoriapng.png)

Se puede observar que en cada una de las pruebas realizadas con el estresor en la memoria su rendimiento se mantiene constante en cierto modo por lo que se puede analizar que el sistema tiene una buena gestión de la memoria o que el estresor no genera una presión excesiva sobre la memoria que el sistema no pueda manejar.

### Hilos
![figura 3](https://github.com/PhantomBlack219/Sistemas-Operacionales/blob/main/Taller13/Imagenes/Hilospng.png)

Por ultimo para los hilos se puede observar lo mismo que en la memoria, su rendimiento se mantiene relativamente constande por lo que el sistema tiene una buena gestion de hilos o que el estresor no gneera una presión excesiva sobre los mismos.
