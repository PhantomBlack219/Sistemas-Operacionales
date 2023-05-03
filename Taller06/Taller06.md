### 1.	Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.
* Si la tarea principal es principalmente secuencial y no se puede dividir en tareas independientes para su ejecución en paralelo, puede ser más costoso crear y administrar hilos adicionales que el beneficio de rendimiento que se obtendría. En tales situaciones, es más eficiente utilizar un solo hilo.

* Si el costo de la comunicación entre hilos es alto, lo cual puede ocurrir en sistemas distribuidos donde la comunicación entre hilos que se ejecutan en diferentes nodos de red puede ser más lenta que la comunicación entre procesos, entonces el uso de múltiples hilos podría no proporcionar una mejora significativa en el rendimiento. En estos casos, la comunicación entre hilos puede limitar la velocidad de procesamiento global.



### 2.	Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.
| Acción | Descripción |
|--------|-------------|
| Guardar contexto actual | La biblioteca guarda el contexto actual del hilo que se está ejecutando actualmente, incluyendo los valores de los registros y la pila. |
| Seleccionar otro hilo | Entre todos los hilos que estén preparados para ejecutarse, la biblioteca selecciona uno de ellos siguiendo algún algoritmo de planificación. |
| Restaurar estado del hilo | Para ello, se toma el estado previamente guardado y se vuelca en los registros del microprocesador y la pila. |
| Ejecutar hilo seleccionado | La biblioteca termina su ejecución saltando a la instrucción que estaba pendiente de ejecutar en el hilo seleccionado. |



### 3.	¿Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? ¿Si, no y por qué?

Es importante destacar que en un proceso multihilo, los valores de los registros no se comparten entre los distintos hilos. De hecho, cada hilo tiene su propio estado, el cual está conformado por los valores de los registros del microprocesador y la pila correspondiente al hilo en cuestión. Por otro lado, los hilos sí comparten el mismo espacio de direcciones virtual, pero cuentan con pilas de llamadas independientes. Esta arquitectura posibilita que los hilos se ejecuten de manera simultánea y que puedan alternarse en el uso de la CPU sin interferir entre sí.


### 4.	¿Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? ¿Si, no y por qué?
Es importante destacar que en un proceso multihilo, los cúmulos de memoria se comparten entre los hilos. Esto se debe a que los hilos comparten el mismo espacio de direcciones virtual, el cual incluye los segmentos de código, datos y montón, permitiendo que los hilos puedan acceder y modificar los mismos datos en memoria. No obstante, es fundamental que los hilos sincronicen el acceso a los datos compartidos para evitar condiciones de carrera o inconsistencias en los resultados.


### 5.	¿Las variables globales se comparten entre los hilos de un proceso multihilo? ¿Si, no y por qué?
Es cierto que las variables globales se comparten entre los hilos de un proceso multihilo. Las variables globales son aquellas que están disponibles en todo el programa, no dentro de una función o bloque de código específico. Debido a que los hilos comparten el mismo espacio de direcciones virtual, todos los hilos pueden acceder y modificar las mismas variables globales. Sin embargo, es crucial destacar que los hilos deben sincronizar el acceso a las variables globales para evitar problemas como condiciones de carrera o inconsistencias. Por lo tanto, aunque las variables globales son compartidas entre los hilos, se debe tener cuidado al acceder y modificar estas variables para evitar problemas de concurrencia.


### 6.	¿La memoria de pila se comparten entre los hilos de un proceso multihilo? ¿Si, no y por qué?

Es correcto afirmar que la memoria de pila no se comparte entre los hilos de un proceso multihilo. Cada hilo tiene su propia pila de llamadas, la cual se utiliza para almacenar información sobre las funciones que se llaman en ese hilo. Las pilas de llamadas de los hilos no son accesibles para otros hilos, lo que permite que cada hilo ejecute funciones de forma independiente sin interferir en el estado de la pila de otros hilos.

### 7.	¿En qué ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador?

En general, la implementación de soluciones multihilo utilizando múltiples hilos del kernel puede mejorar significativamente el rendimiento de los sistemas en situaciones donde las tareas pueden ser divididas en partes independientes y ejecutarse simultáneamente. Sin embargo, es importante tener en cuenta que en algunos casos el uso de múltiples hilos puede disminuir el rendimiento debido a los costos asociados con el cambio de contexto y problemas de sincronización. Por lo tanto, es crucial realizar una evaluación detallada del diseño e implementación del programa para determinar si una solución multihilo es apropiada para la tarea en cuestión.

Existen varias situaciones en las que una solución multihilo que utiliza múltiples hilos del kernel puede mejorar el rendimiento en comparación con un único hilo en un sistema monoprocesador. Algunos ejemplos incluyen cuando los hilos realizan tareas heterogéneas que requieren diferentes recursos del sistema, lo que permite equilibrar la carga de trabajo y evitar la inactividad o sobrecarga de recursos. También es útil utilizar múltiples hilos si se necesita una respuesta rápida de los hilos más críticos y se pueden asignar prioridades más altas a los hilos importantes para evitar interrupciones de hilos menos urgentes. Además, si el programa requiere operaciones intensivas en cálculo y operaciones, se pueden utilizar varios núcleos del procesador para procesar diferentes partes del cálculo simultáneamente, lo que acelera la ejecución total del programa.

Otras situaciones en las que es beneficioso utilizar soluciones multihilo incluyen cuando el programa se basa en la entrada y salida de datos, permitiendo que los hilos realicen operaciones de entrada y salida simultáneamente mientras el programa sigue ejecutando otras tareas. Si el programa necesita mantener una interfaz gráfica de usuario o una aplicación de servidor en línea, los hilos pueden manejar solicitudes y eventos simultáneamente y mantener la aplicación activa y responsable. Finalmente, en caso de que el programa lleve a cabo operaciones de red, los hilos pueden manejar diferentes conexiones simultáneamente, lo que acelera el tiempo de respuesta y mejora la eficiencia en el manejo de solicitudes de red.

### 8.	¿Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?
Una solución multihilo que emplea múltiples hilos de usuario puede mejorar el rendimiento en un sistema multiprocesador en comparación con un sistema monoprocesador, debido a que en el primero cada procesador tiene su propia memoria caché y bus de sistema, lo que permite que los hilos se ejecuten simultáneamente y aprovechen los recursos de hardware disponibles. Sin embargo, para lograr un buen rendimiento en un sistema multiprocesador, es importante diseñar e implementar cuidadosamente la solución multihilo para minimizar la competencia por los recursos compartidos y asegurar una distribución adecuada de la carga de trabajo entre los procesadores. También hay que tener en cuenta que el uso de múltiples hilos puede aumentar la complejidad y los costos de programación y depuración.

En general, se pueden destacar las siguientes situaciones en las que una solución multihilo que utiliza múltiples hilos de usuario puede ser beneficioso:

* Cuando los hilos realizan tareas independientes que se pueden distribuir entre los distintos procesadores, permitiendo aprovechar el paralelismo del sistema multiprocesador y reducir el tiempo total de ejecución.

* Cuando los hilos realizan tareas heterogéneas que requieren diferentes recursos del sistema, lo que permite equilibrar la carga de trabajo y evitar que algún recurso quede ocioso o saturado.

* Cuando los hilos tienen un bajo nivel de bloqueo y no dependen mucho de la sincronización con otros hilos, reduciendo el número de cambios de contexto y la sobrecarga asociada.


### 9.	Suponga que el número de hilos del usuario es mayor que el número de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el número de hilos del kernel asignados al programa es menor que el número de procesadores.

Cuando el número de hilos del usuario supera al número de procesadores del sistema, algunos hilos deben esperar su turno para ser ejecutados, ya que no todos pueden funcionar al mismo tiempo en paralelo en los procesadores. Si el número de hilos del kernel asignados al programa es menor que el número de procesadores, algunos procesadores pueden quedarse sin trabajo y esto puede afectar negativamente el rendimiento del programa. En esta situación, los hilos de usuario no pueden aprovechar al máximo el paralelismo real que ofrece el sistema multiprocesador, ya que dependen de los hilos del kernel para ejecutarse. También puede haber una mayor sobrecarga por los cambios de contexto entre los hilos de usuario y los hilos del kernel. Para obtener el mejor rendimiento posible, es importante asignar de manera efectiva los hilos del kernel y distribuir la carga de trabajo de manera equilibrada entre los procesadores disponibles. Al utilizar técnicas de planificación de procesos adecuadas, como la planificación basada en prioridades o la planificación en tiempo real, se puede aprovechar mejor los recursos del sistema y, por lo tanto, mejorar el rendimiento del programa.
