### 1. Explique la diferencia entre los conceptos de fragmentación interna y externa. 
| Fragmentación interna | Fragmentación externa |
|-----------------------|-----------------------|
| Se refiere al espacio que permanece sin usar entre los bloques en una región asignada. | Se refiere al espacio que queda sin usar porque es demasiado corto para almacenar una solicitud. |
| La razón es la partición de la memoria en bloques de tamaño fijo. | La razón es la partición de la memoria en bloques de tamaño variable según el tamaño de los procesos. |
| Ocurre cuando se asigna más espacio a un programa que el requerido. | Ocurre cuando un programa se elimina de una memoria dejando espacio libre que provoca una fragmentación externa. |
| Se puede solucionar asignando memoria dinámicamente a los programas. | Se puede solucionar mediante paginación, compactación y segmentación. |

### 2. ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?

El editor de montaje es un programa que traduce el código fuente escrito en lenguaje ensamblador a código objeto binario que puede ser ejecutado por la máquina. Por otro lado el acoplamiento de las instrucciones y los datos a direcciones de memoria es el proceso de asignar una ubicación física en la memoria a cada instrucción y dato del programa.

El editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria de varias formas, dependiendo del tipo de acoplamiento que se utilice:

**Acoplamiento absoluto:** el editor de montaje asigna direcciones fijas a las instrucciones y los datos en el código objeto, que deben coincidir con las direcciones reales en la memoria cuando se carga el programa. Este tipo de acoplamiento es simple y rápido, pero no permite la reubicación ni la compartición del código.

**Acoplamiento reubicable:** el editor de montaje asigna direcciones relativas a las instrucciones y los datos en el código objeto, que se ajustan con un desplazamiento cuando se carga el programa en la memoria. Este tipo de acoplamiento permite la reubicación del código, pero no la compartición.

**Acoplamiento dinámico:** el editor de montaje no asigna direcciones a las instrucciones y los datos en el código objeto, sino que deja esa tarea al cargador o al sistema operativo cuando se ejecuta el programa. Este tipo de acoplamiento permite la reubicación y la compartición del código, pero requiere más tiempo y espacio.

### 3. ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento  de memoria de éste?

El compilador es el programa que traduce el código fuente, que es el programa escrito en un lenguaje de alto nivel como C#, a código máquina, que es el lenguaje que entiende el procesador. El código máquina es una secuencia de instrucciones binarias que indican al procesador qué operaciones debe realizar. El editor de montaje es el programa que une el código máquina generado por el compilador con el código máquina de las librerías externas, que son colecciones de funciones ya programadas y listas para usar. 

El editor de montaje también se encarga de asignar direcciones de memoria a las variables, constantes, etiquetas y funciones del programa, y de resolver las referencias entre ellas. Para hacer esto, el editor de montaje necesita la información que le pasa el compilador sobre estos elementos. Esta información se llama tabla de símbolos y contiene los nombres y tipos de los elementos del programa, así como las referencias a las librerías externas. Con esta información, el editor de montaje puede facilitar el acoplamiento de memoria, que es el proceso de asignar una dirección de memoria a cada elemento del programa y resolver las referencias entre ellos.

### 4. En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112  KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?


* Algoritmo de primer ajuste: Este algoritmo busca secuencialmente la primera partición libre que tenga suficiente tamaño para alojar el proceso. En este caso, el resultado sería:


| Partición | Tamaño | Proceso | Fragmentación interna |
|-----------|--------|---------|-----------------------|
| 1         | 100 KB | -       | -                     |
| 2         | 500 KB | P1      | 288 KB                |
| 3         | 200 KB | -       | -                     |
| 4         | 300 KB | P2      | 117 KB                |
| 5         | 600 KB | P3      | 488 KB                |


El proceso P4 no puede ser asignado porque no hay ninguna partición libre que tenga al menos 426 KB. La fragmentación externa es de 300 KB y la interna es de 893 KB.

* Algoritmo de mejor ajuste: Este algoritmo busca la partición libre que tenga el menor tamaño posible para alojar el proceso, es decir, la que deje menos espacio sin usar. En este caso, el resultado sería:

| Partición | Tamaño | Proceso | Fragmentación interna |
|-----------|--------|---------|-----------------------|
| 1         | 100 KB | P3      | 12 KB                 |
| 2         | 500 KB | P2      | 83 KB                 |
| 3         | 200 KB | -       | -                     |
| 4         | 300 KB | P1      | 88 KB                 |
| 5         | 600 KB | -       | -                     |


El proceso P4 no puede ser asignado porque no hay ninguna partición libre que tenga al menos 426 KB. La fragmentación externa es de 800 KB y la interna es de 183 KB.

* Algoritmo de peor ajuste: Este algoritmo busca la partición libre que tenga el mayor tamaño posible para alojar el proceso, es decir, la que deje más espacio sin usar. En este caso, el resultado sería:


| Partición | Tamaño | Proceso | Fragmentación interna |
|-----------|--------|---------|-----------------------|
| 1         | 100 KB | -       | -                     |
| 2         | 500 KB | P4      | 74 KB                 |
| 3         | 200 KB | -       | -                     |
| 4         | 300 KB | P1      | 88 KB                 |
| 5         | 600 KB | P2      | 183 KB                |


El proceso P3 no puede ser asignado porque no hay ninguna partición libre que tenga al menos 112 KB. La fragmentación externa es de 300 KB y la interna es de 345 KB.

* El algoritmo que hace el uso más eficiente de la memoria es el de mejor ajuste, ya que es el que tiene la menor fragmentación interna total (183 KB). El algoritmo de peor ajuste tiene la mayor fragmentación interna total (345 KB) y el de primer ajuste tiene una fragmentación externa alta (300 KB) que impide asignar los cuatro procesos.

### 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?
### 1. Asignación contigua de memoria.
### 2. Segmentación pura.
### 3. Paginación pura.

* **Asignación contigua de memoria:** Este esquema requiere que el proceso se cargue en un bloque contiguo de memoria principal. Para soportar la asignación dinámica de memoria, se necesita un algoritmo que pueda encontrar una partición libre de suficiente tamaño para el proceso y que pueda reubicar el proceso si es necesario. También se necesita un mecanismo para evitar la fragmentación externa, que es el espacio libre que queda entre las particiones ocupadas y que no puede ser utilizado por ningún proceso. Algunos algoritmos que se pueden usar son el primer ajuste, el mejor ajuste y el peor ajuste, que ya hemos visto anteriormente. Algunos mecanismos para evitar la fragmentación externa son la compactación, que consiste en mover los procesos para juntar los espacios libres, y la paginación, que consiste en dividir la memoria y los procesos en unidades fijas llamadas marcos y páginas, respectivamente.

* **Segmentación pura:** Este esquema permite que el proceso se divida en segmentos lógicos de diferente tamaño y que cada segmento se cargue en una partición no contigua de memoria principal. Para soportar la asignación dinámica de memoria, se necesita una tabla de segmentos por cada proceso, que contenga la dirección base y el límite de cada segmento en memoria. También se necesita un algoritmo que pueda encontrar una partición libre de suficiente tamaño para cada segmento y que pueda reubicar los segmentos si es necesario. Además, se necesita un mecanismo para evitar la fragmentación externa, que también puede ocurrir entre las particiones ocupadas por los segmentos. Algunos algoritmos y mecanismos que se pueden usar son los mismos que para la asignación contigua de memoria.

* **Paginación pura:** Este esquema consiste en dividir la memoria y los procesos en unidades fijas llamadas marcos y páginas, respectivamente. Cada página tiene el mismo tamaño que un marco y se carga en cualquier marco libre de memoria principal. Para soportar la asignación dinámica de memoria, se necesita una tabla de páginas por cada proceso, que contenga el número de marco donde está cargada cada página del proceso. También se necesita un algoritmo que pueda encontrar un marco libre para cada página y que pueda reemplazar las páginas si es necesario. Además, se necesita un mecanismo para evitar la fragmentación interna, que es el espacio libre que queda dentro de un marco cuando la página es más pequeña que el marco. Algunos algoritmos que se pueden usar son el FIFO, el LRU y el óptimo, que ya hemos visto anteriormente. Algunos mecanismos para evitar la fragmentación interna son el uso de tamaños de página pequeños o el uso de técnicas de compresión de memoria.

### 6. Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:
### 1. Fragmentación externa.
### 2. Fragmentación interna.
### 3. Capacidad de compartir código.

* **Fragmentación externa:** Este es el problema que ocurre cuando hay espacios libres entre las particiones ocupadas por los procesos y que no pueden ser utilizados por ningún otro proceso porque son demasiado pequeños o no contiguos. La fragmentación externa se da en los esquemas de asignación contigua y de segmentación pura, ya que ambos requieren que el proceso o el segmento se cargue en un bloque contiguo de memoria principal. La fragmentación externa se puede evitar o reducir mediante técnicas como la compactación, que consiste en mover los procesos para juntar los espacios libres, o la paginación, que consiste en dividir la memoria y los procesos en unidades fijas llamadas marcos y páginas, respectivamente. La fragmentación externa no se da en el esquema de paginación pura, ya que cada página se puede cargar en cualquier marco libre de memoria principal.

* **Fragmentación interna:** Este es el problema que ocurre cuando hay espacio libre dentro de una partición ocupada por un proceso y que no puede ser utilizado por ningún otro proceso porque forma parte de la partición. La fragmentación interna se da cuando el tamaño del proceso o del segmento es menor que el tamaño de la partición o del marco donde se carga. La fragmentación interna se puede evitar o reducir mediante técnicas como el uso de tamaños de partición o de marco pequeños o el uso de técnicas de compresión de memoria. La fragmentación interna se da en los esquemas de asignación contigua y de paginación pura, ya que ambos requieren que el proceso o la página se cargue en un bloque fijo de memoria principal. La fragmentación interna no se da en el esquema de segmentación pura, ya que cada segmento tiene un tamaño variable según su contenido.

* **Capacidad de compartir código:** Este es el beneficio que se obtiene cuando varios procesos pueden acceder al mismo código o datos en memoria principal, ahorrando espacio y facilitando la comunicación. La capacidad de compartir código depende del mecanismo de protección que se utilice para evitar que los procesos interfieran entre sí. La capacidad de compartir código se da en los esquemas de segmentación pura y de paginación pura, ya que ambos permiten que varios procesos tengan referencias al mismo segmento o página en memoria principal. La capacidad de compartir código no se da en el esquema de asignación contigua, ya que cada proceso tiene un bloque exclusivo de memoria principal.

Ahora bien, en la siguiente tabla se puede observar la comparación entre los esquemas de organización como tal:

| Esquema               | Fragmentación externa | Fragmentación interna | Capacidad de compartir código |
|-----------------------|-----------------------|-----------------------|-------------------------------|
| Asignación contigua   | Sí                    | Sí                    | No                            |
| Segmentación pura     | Sí                    | No                    | Sí                            |
| Paginación pura       | No                    | Sí                    | Sí                            |


### 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad. 
### 1. ¿Por qué? 
### 2. ¿Como podía el OS permitir el acceso a otras zonas de memoria?
### 3. ¿Por qué debería o por qué no debería?

**¿Por qué?** Un proceso no puede acceder a una zona de memoria que no sea de su propiedad porque el sistema operativo usa un mecanismo de protección de memoria para evitar que los procesos interfieran entre sí o con el propio sistema operativo. En un OS con paginación, el mecanismo de protección de memoria se basa en el uso de una tabla de páginas por cada proceso, que contiene el número de marco donde está cargada cada página del proceso, y de unos bits de protección asociados a cada página, que indican los permisos de acceso a la misma. El sistema operativo usa la unidad de gestión de memoria (MMU) para traducir las direcciones lógicas del proceso a direcciones físicas de la memoria principal, usando la tabla de páginas. Si el proceso intenta acceder a una dirección lógica que no tiene una entrada válida en la tabla de páginas, o que tiene un bit de protección que no permite el tipo de acceso solicitado, se produce un error de página y el sistema operativo interviene para detener o abortar el proceso.

**¿Cómo podía el OS permitir el acceso a otras zonas de memoria?** El OS podría permitir el acceso a otras zonas de memoria si modifica la tabla de páginas o los bits de protección del proceso para incluir las direcciones lógicas y los permisos correspondientes a las zonas de memoria que quiere compartir. Por ejemplo, si el OS quiere permitir que dos procesos compartan una zona de código o datos en memoria principal, podría asignar la misma página física a ambos procesos y marcarla como sólo lectura en sus tablas de páginas. De esta forma, ambos procesos podrían acceder a la misma zona de memoria sin modificarla.

**¿Por qué debería o por qué no debería?** El OS debería permitir el acceso a otras zonas de memoria si hay alguna razón válida para ello, como por ejemplo mejorar el rendimiento, ahorrar espacio o facilitar la comunicación entre procesos. Por ejemplo, si varios procesos ejecutan el mismo programa o usan la misma librería, el OS podría permitir que compartan el código en memoria principal para evitar duplicar las páginas y reducir los tiempos de carga. O si dos procesos necesitan intercambiar información, el OS podría permitir que compartan una zona de datos en memoria principal para evitar usar otros mecanismos más costosos como los archivos o los sockets.

El OS no debería permitir el acceso a otras zonas de memoria si no hay ninguna razón válida para ello, o si hay algún riesgo de comprometer la seguridad, la integridad o la privacidad de los procesos o del propio sistema operativo. Por ejemplo, si un proceso intenta acceder a una zona de memoria que contiene información sensible o confidencial de otro proceso o del sistema operativo, el OS debería impedirlo para evitar fugas o robos de datos. O si un proceso intenta acceder a una zona de memoria que contiene código o datos que pueden ser modificados por otro proceso o por el sistema operativo, el OS debería impedirlo para evitar errores o ataques maliciosos.

### 8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de  memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

| Criterio                        | Paginación                          | Segmentación                         |
|---------------------------------|-------------------------------------|--------------------------------------|
| Estructura de producción        | Tabla de páginas                    | Tabla de segmentos                   |
| Contenido de la entrada         | Número de marco y bits de control   | Dirección base, límite y bits de control |
| Tamaño de la entrada            | Depende del tamaño del marco        | Depende del tamaño del espacio físico |
| Número de entradas              | Depende del tamaño del espacio virtual y del tamaño de la página | Depende del número y tamaño de los segmentos |
| Memoria requerida               | Proporcional al producto del tamaño del espacio virtual y el tamaño de la entrada, dividido por el tamaño de la página | Proporcional al producto del número de segmentos y el tamaño de la entrada |
| Caso favorable                  | Proceso con muchos segmentos pequeños que ocupan pocas páginas | Proceso con un solo segmento que ocupa todo el espacio virtual |
| Caso desfavorable               | Proceso con un solo segmento que ocupa muchas páginas o con mucho espacio vacío en el espacio virtual | Proceso con muchos segmentos grandes que ocupan muchas entradas |
| Aprovechamiento de la memoria   | Fijo según el máximo espacio virtual posible | Variable según el uso real del proceso |


### 9. Considere la siguiente tabla de segmento:
| Segmento | Base | Longitud | Segmento | Base | Longitud |
|----------|------|----------|----------|------|----------|
|    0     |   219|   600    |     3    |  1327|   580    |
|      1   |  2300|   14     |    4     |1952  |  96      |
|     2    |   90 |   100    |          |      |          |

¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?

1. 0.430
2. 1.10
3. 2.500
4. 3.400
5. 4.112

* 0.430 = 219 + 430 = 649
* 1.10 = 2300 + 10 = 2310
* 2.500 = 90 + 500 = 590
* 3.400 = 1327 + 400 = 1727
* 4.112 = 1952 + 112 = 2064
