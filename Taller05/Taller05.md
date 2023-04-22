###1.	Compare las diferencias entre la planeación a corto plazo y largo plazo.
La planificación a largo plazo se encarga de seleccionar los procesos adecuados para su posterior ejecución desde la cola de almacenamiento masivo y cargarlos en la memoria principal, mientras que la planificación a corto plazo se enfoca en seleccionar los procesos ya preparados para ejecución y asignarles una unidad central de procesamiento (CPU).
El planificador de la CPU es ampliamente utilizado debido a su capacidad para asignar eficientemente los recursos de la CPU a los procesos y garantizar un rendimiento óptimo del sistema operativo. Por lo tanto, la velocidad es un factor crítico en este caso.
En contraste, el planificador de trabajos se enfoca en la finalización de procesos y puede tomar más tiempo para seleccionar los procesos adecuados para cargar en la memoria principal desde la cola de almacenamiento masivo. Aunque la velocidad no es crítica en este caso como en el planificador de la CPU, sigue siendo importante para garantizar una gestión adecuada de los recursos del sistema operativo.

###2.	Caracterice dos procesos que se puedan considerar a mediano plazo
La **gestión de E/S** implica la transferencia de datos entre los dispositivos de entrada/salida y la memoria principal, lo cual puede requerir interrumpir temporalmente los procesos que estén utilizando estos dispositivos.
Por otro lado, la **compilación de programas** implica varias etapas, como análisis léxico, análisis sintáctico, optimización y generación de código. El tiempo que lleva la compilación y los recursos que requiere dependerán del tamaño del programa y la complejidad del código.
En ambos casos, la planificación a medio plazo puede mejorar la eficiencia del sistema operativo al equilibrar la cantidad de procesos que compiten por los recursos y liberar memoria cuando sea necesario.

###3.	Describa las acciones que toma el kernel para el cambio de contexto entre procesos.

| Acción                                         | Descripción               |
|------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| Guardar el estado actual del proceso           | El kernel guarda el estado actual del proceso en ejecución, incluyendo los valores de los registros de la CPU, el estado del proceso y la información de gestión de memoria. Este contexto se almacena en la estructura de control de procesos (PCB). |
| Cargar el contexto almacenado del nuevo proceso | El kernel carga el contexto almacenado del nuevo proceso que se ha decidido ejecutar en la CPU. Esto incluye la restauración de los valores de los registros de la CPU y la información de gestión de memoria del nuevo proceso.              |
| Actualizar las estructuras de datos del kernel  | El kernel actualiza sus estructuras de datos internas para reflejar el cambio de contexto. Por ejemplo, actualiza la lista de procesos en espera y la cola de procesos listos.                                            |
| Reanudar la ejecución del nuevo proceso         | Una vez que se ha cargado el contexto del nuevo proceso y se han actualizado las estructuras de datos del kernel, el kernel reanuda la ejecución del nuevo proceso en la CPU.                                           |

###4.	Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona

| Ventajas de la comunicación síncrona | Desventajas de la comunicación síncrona |
|-------------------------------------|----------------------------------------|
| Fácil de entender e implementar     | Menos eficiente si se espera una respuesta larga o si hay una gran cantidad de comunicación |
| Cada respuesta se recibe antes de continuar con la siguiente operación | Puede bloquear los procesos mientras se espera una respuesta |
|                                      | Menos escalable si hay muchas comunicaciones que ocurren al mismo tiempo |

| Ventajas de la comunicación asíncrona | Desventajas de la comunicación asíncrona |
|--------------------------------------|-----------------------------------------|
| Mayor eficiencia y escalabilidad     | Más difícil de implementar y entender |
| Emisor y receptor pueden trabajar independientemente | La integridad de los datos puede ser más difícil de garantizar |
| No bloquea los procesos mientras se espera una respuesta | Menos efectivo en situaciones donde se requiere una respuesta inmediata |

###5.	Defina las ventajas y desventajas desde el punto de vista del OS para envío por copia y envío por referencia.

###6.	Defina las ventajas y desventajas desde el punto de vista del OS para mensajes de tamaño fijo y de tamaño variable.


###7.	Describa los estados de un proceso. 
*	**Nuevo:** El proceso se ha creado, pero aún no se ha asignado a un procesador para su ejecución.
*	**Preparado:** El proceso está listo para su ejecución, pero aún no se le ha asignado un procesador. En este estado, el proceso se encuentra en la cola de procesos listos para ser ejecutados.
*	**En ejecución:** Una vez que el procesador está disponible, el proceso pasa al estado de En ejecución, lo que significa que el proceso se está ejecutando en el procesador asignado.
*	**En espera:** El proceso se detiene temporalmente porque está esperando que ocurra algún evento externo, como la finalización de una operación de entrada/salida o la llegada de una señal de interrupción.
*	**Terminado:** En este estado, el proceso ha completado todas las tareas asignadas y se ha liberado la memoria reservada para él.

###8.	Que datos se encuentran en un PCB. 
El PCB (bloque de control de procesos) es una estructura de datos importante para la gestión y control de procesos en un sistema operativo. Contiene información relevante para el funcionamiento del proceso, como:

*	**Estado del proceso:** indica el estado actual del proceso, que puede ser "en ejecución", "bloqueado" o cualquier otro estado relevante.
*	**Contador del programa:** indica la dirección de la próxima instrucción que se ejecutará en el proceso.
*	**Registros de la CPU:** almacenan diferentes tipos de información importante para el proceso, como valores de registro de propósito general y valores de registro de estado.
*	**Información de planificación de la CPU:** incluye la prioridad del proceso y otros parámetros necesarios para la planificación de su ejecución.
*	**Información de gestión de memoria:** incluye valores de registros base y límites, tablas de páginas o segmentos que se utilizan para la gestión de la memoria asignada al proceso.
*	**Información contable:** incluye estadísticas de uso de la CPU, tiempo real utilizado, límites de tiempo asignados y número de proceso.
*	**Información del estado de I/O:** incluye la lista de dispositivos de entrada/salida asignados al proceso y la lista de archivos abiertos.

###9.	Describa un modelo de comunicación Cliente-Servidor
El modelo de comunicación Cliente-Servidor es utilizado para establecer una comunicación entre dos entidades independientes que desean intercambiar información a través de una red. Estas entidades son el cliente y el servidor. El cliente es quien solicita los servicios que necesita, mientras que el servidor está diseñado para proporcionar estos servicios. Ambos están identificados por una dirección IP y un puerto, que juntos forman un punto terminal de la comunicación, conocido como socket.
Es importante que cada conexión se diferencie de las demás, por lo que se asigna una pareja única de sockets para cada conexión. La comunicación a través de sockets se considera de bajo nivel, ya que solo permite la transmisión no estructurada de bytes entre los hilos de comunicación. A pesar de esto, su eficiencia es alta, ya que permite la transmisión de datos de manera rápida y sencilla.

