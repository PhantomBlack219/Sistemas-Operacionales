### 1.	¿Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

Es esencial distinguir entre programas que están limitados por E/S (entrada/salida) y aquellos limitados por la CPU para asignar los recursos del sistema de manera óptima y maximizar su rendimiento global. Un planificador inteligente puede priorizar la ejecución de programas limitados por E/S, ya que estos procesos tienen ráfagas de CPU cortas, lo que significa que utilizan el procesador por un tiempo breve y pueden salir rápidamente para que otro proceso pueda usarlo. En consecuencia, durante los períodos de inactividad mientras se espera una operación de E/S, se pueden ejecutar otros programas que estén limitados por la CPU, lo que permite una mejor utilización de los recursos y reduce el tiempo de espera de los programas en general. 

### 2.	¿Cómo entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?

En algunas configuraciones, la utilización de la CPU y el tiempo de respuesta pueden chocar debido a la escasez de recursos y las prioridades de ejecución. Si el sistema operativo no usa la CPU adecuadamente, el tiempo de respuesta podría aumentar porque el sistema operativo limita el uso del procesador. Este problema puede ser causado por diversas razones, como la falta de recursos del sistema o la presencia de software malicioso. Es esencial planificar adecuadamente y equilibrar los recursos para evitar retrasos en el tiempo de respuesta y optimizar el rendimiento general del sistema.

### 3.	¿Cómo entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?

En ciertas configuraciones, el tiempo medio de procesamiento y el tiempo máximo de espera pueden estar en conflicto, ya que los procesos con ráfagas de CPU muy cortas pueden tener que esperar durante mucho tiempo. Este problema surge cuando el planificador da prioridad a procesos con ráfagas de CPU largas o mayor prioridad, dejando a otros procesos con ráfagas de CPU cortas en la cola de espera. Si se establece un tiempo máximo de espera muy breve, los procesos que no se completen dentro de ese tiempo serán cancelados, lo que aumentará el tiempo medio de procesamiento. Por lo tanto, el planificador debe intentar reducir el tiempo máximo de espera sin afectar el tiempo medio de procesamiento de los procesos.

### 4.	¿Cómo entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?

En ciertas configuraciones, la utilización de los dispositivos I/O y la utilización de la CPU pueden entrar en conflicto porque cuando la CPU espera por una respuesta de un dispositivo I/O para poder ejecutar procesos, la CPU no se utiliza al máximo. Este problema puede ocurrir cuando el planificador asigna la CPU a procesos que requieren muchas operaciones de entrada/salida, como leer o escribir en discos, redes o teclados. Estos procesos tienen ráfagas de CPU cortas, lo que significa que utilizan el procesador por un tiempo breve antes de solicitar un servicio de I/O. Por ejemplo, si un programa está limitado por I/O, el planificador debe asegurarse de que el proceso no se bloquee mientras espera una operación de E/S. Si un programa está limitado por la CPU, el planificador debe asegurarse de que el proceso tenga suficiente tiempo de CPU para completar su trabajo. Por lo tanto, el planificador debe intentar maximizar la utilización de la CPU sin afectar la utilización de los dispositivos I/O.

### 5.	Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice:

![figura 1](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller%208/tablas/punto%205.png)

Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).

![FCFS](https://github.com/PhantomBlack219/Sistemas-Operacionales/blob/main/Taller08/imagenes/fcfs.png)

![SJF](https://github.com/PhantomBlack219/Sistemas-Operacionales/blob/main/Taller08/imagenes/sjf.png)

![PRIORIDAD](https://github.com/PhantomBlack219/Sistemas-Operacionales/blob/main/Taller08/imagenes/prioridades.png)

![RR](https://github.com/PhantomBlack219/Sistemas-Operacionales/blob/main/Taller08/imagenes/rr.png)


### 6.	¿Cuál es el tiempo de ejecución de cada proceso para cada algoritmo?
El tiempo de ejecución para cada proceso en cada algoritmo es equivalente a su tiempo de ráfaga, que es el tiempo necesario para que el proceso termine.

![figura 2](https://github.com/gysselis40/Sistemas-Operacionales/blob/main/Taller%208/tablas/punto%206.png)

### 7.	¿Cuál es el tiempo de espera de cada proceso para cada algoritmo?

![figura 3](https://github.com/PhantomBlack219/Sistemas-Operacionales/blob/main/Taller08/imagenes/tiempos%20de%20espera.png)

### 8.	¿Qué algoritmo puede dar lugar a bloqueos indefinidos?

El algoritmo de planificación por prioridades sin desalojo puede conducir a bloqueos indefinidos, ya que si llega un proceso con una prioridad más alta que el proceso en ejecución, este último se bloquea hasta que el primero termine. Este problema se conoce como inanición o hambruna. Si el proceso con mayor prioridad nunca termina o tiene ráfagas de CPU muy largas, el proceso bloqueado puede permanecer en espera indefinidamente, lo que puede tener un efecto negativo en el rendimiento del sistema. Este problema se puede evitar mediante el uso de una política de desalojo, que permite que el proceso en ejecución sea interrumpido por otro proceso de mayor prioridad. También se puede asignar prioridades dinámicas que cambien según el tiempo de espera, lo que puede garantizar que los procesos más antiguos tengan una prioridad más alta que los procesos recién llegados. De esta manera, se puede prevenir la inanición y asegurar un rendimiento óptimo del sistema.

### 9.	Considere un sistema que implementa una planificación por colas multinivel. ¿Qué estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?

En un sistema que emplea la planificación por colas multinivel, existen diferentes estrategias que pueden ser utilizadas para maximizar el tiempo de CPU asignado a los procesos del usuario. Algunas posibles estrategias incluyen:

* Asignar una prioridad más alta a los procesos del usuario en comparación con los procesos del sistema, con el fin de que los procesos del usuario tengan más oportunidades de utilizar el CPU.
* Otorgar más tiempo de ejecución a los procesos del usuario en comparación con los procesos del sistema, para que los primeros puedan utilizar el CPU de manera más efectiva.
* Establecer un tiempo de espera más corto para los procesos del sistema en comparación con los procesos del usuario, para que los procesos del sistema puedan liberar el CPU más rápidamente.
