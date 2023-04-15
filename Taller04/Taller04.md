# Investigación
Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:
### 1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías, descríbalas.

| Usuario                                       | Sistema                                |
|-----------------------------------------------|----------------------------------------|
| Interacción con el sistema de archivos        | Administración de recursos             |
| Interacción con la interfaz de usuario        | Administración de procesos             |
| Gestión de programas y aplicaciones           | Gestión de la memoria                  |
| Control de dispositivos de entrada y salida   | Gestión de la seguridad                |
| Personalización y configuración del sistema  | Interacción con hardware y firmware    |

Las categorias van dividas en "usuario y sistema", Los servicios del entorno del usuario son aquellos que proporcionan una interfaz al usuario para interactuar con el sistema operativo y sus recursos mientras que Los servicios del sistema operativo son aquellos que son esenciales para el funcionamiento del sistema operativo en sí mismo.

### 2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario.

* Interfaz gráfica de usuario (GUI).
* Controladores de dispositivo 
* Gestor de ventanas.
* Gestor de archivos.
* Configuración personalizada (


### 3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa.

Primero será necesario Utilizar herramientas de monitoreo para medir el desempeño del programa en tiempo real. Por ejemplo, herramientas de monitoreo de recursos del sistema, como top, htop, vmstat, entre otras. Luego con ella extraemos los datos más necesarios para posteriormente analizarlos por medio de gráficas ver tiempos de ejecución máximos y minimos y lo mismo con los recursos. Por último se reliza el informe onservando así el comportamiena cantidad de recursos utilizados, el tiempo de ejecución, la frecuencia de fallos, entre otros datos relevantes.

### 4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.

1. **Crear archivos:** El sistema operativo permite a los usuarios crear nuevos archivos en el sistema de archivos. Esto puede ser útil para crear documentos, archivos de texto, hojas de cálculo, imágenes y otros tipos de archivos.

2. **Eliminar archivos:** El sistema operativo permite a los usuarios eliminar archivos del sistema de archivos. Esto puede ser útil para liberar espacio en disco o para eliminar archivos innecesarios.

3. **Actualizar archivos:** El sistema operativo permite a los usuarios actualizar el contenido de los archivos existentes en el sistema de archivos. Esto puede ser útil para hacer cambios en documentos, hojas de cálculo u otros tipos de archivos.

4. **Configurar permisos de archivos:** El sistema operativo permite a los usuarios establecer permisos de acceso a los archivos en el sistema de archivos. Esto puede ser útil para controlar quién puede acceder y modificar los archivos.

5. **Comprimir y descomprimir archivos:** El sistema operativo puede proporcionar herramientas para comprimir y descomprimir archivos en formato ZIP, RAR u otros formatos. Esto puede ser útil para ahorrar espacio en disco o para compartir archivos grandes a través de Internet.

### 5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos.

| Ventajas                                  | Desventajas                                     |
|-------------------------------------------|------------------------------------------------|
| Simplifica el diseño del sistema operativo| Puede limitar la flexibilidad del sistema       |
| Reduce la complejidad de la implementación| Puede llevar a una disminución del rendimiento   |
| Permite una interfaz consistente           | Puede limitar la capacidad de expansión del OS   |
| Facilita el desarrollo de controladores de dispositivos| Puede complicar el mantenimiento del sistema   |
| Reduce el tamaño del kernel                | Puede generar errores de programación          |
|                                            | Puede aumentar la complejidad de la programación |


### 6. Conteste las siguientes preguntas:
* Cual es el propósito del interprete de comandos?

El propósito del intérprete de comandos (también conocido como shell) es proporcionar una interfaz de usuario para interactuar con el sistema operativo. Permite al usuario ingresar comandos en la línea de comandos y ejecutar programas, administrar archivos y directorios, configurar el sistema, entre otras tareas. el interprete no entiende el comando, sino que identifica un archivo que carga en memoria y lo ejecuta.

* Por qué esta separado del kernel?

porque su función es proporcionar una interfaz de usuario y no estar involucrado en la administración directa de los recursos del sistema. El kernel es responsable de la gestión de los recursos del sistema, como el procesamiento, la memoria y los dispositivos de E/S, mientras que el intérprete de comandos es responsable de la interacción entre el usuario y el sistema operativo.

* Liste los requisitos para desarrollar un interprete de comandos.

1. **Análisis de sintaxis:** Un intérprete de comandos debe ser capaz de analizar la sintaxis de los comandos ingresados por el usuario para determinar qué acción se debe tomar.
2. **Interacción con el sistema operativo:** El intérprete de comandos debe ser capaz de interactuar con el sistema operativo para ejecutar comandos, acceder a archivos y directorios, y realizar otras tareas.
3. **Manejo de errores:** El intérprete de comandos debe ser capaz de manejar errores de manera efectiva para evitar interrupciones en la ejecución de los comandos.
4. **Seguridad:** El intérprete de comandos debe ser capaz de verificar la validez de los comandos ingresados por el usuario y proteger el sistema contra posibles amenazas.
5. **Personalización:** El intérprete de comandos debe ser personalizable para adaptarse a las necesidades específicas del usuario.
6. **Retroalimentación al usuario:** El intérprete de comandos debe proporcionar retroalimentación clara al usuario, incluyendo mensajes de error, mensajes de confirmación y resultados de comandos.
7. **Capacidad para manejar variables y funciones:** El intérprete de comandos debe ser capaz de manejar variables y funciones para permitir la creación de scripts y automatización de tareas.
8. **Portabilidad:** El intérprete de comandos debe ser compatible con múltiples sistemas operativos y arquitecturas de hardware.

### 7. Compare las ventajas y desventajas de los modelos de intercomunicación.

| Modelo de comunicación | Ventajas | Desventajas |
| --- | --- | --- |
| Paso de mensajes | * Proporciona una forma clara y estructurada para que los procesos se comuniquen entre sí. <br /> * Permite que los procesos se ejecuten en diferentes máquinas, lo que puede ser útil en sistemas distribuidos. <br /> * Ayuda a evitar problemas de sincronización y acceso a memoria compartida al obligar a los procesos a enviar y recibir mensajes explícitamente por medio del buzon. | * Puede haber un mayor costo de rendimiento debido a la sobrecarga de la comunicación. <br /> * Puede ser más difícil de programar que la comunicación basada en memoria compartida, especialmente cuando se requiere una comunicación más compleja y de gran escala. <br /> * Los mensajes pueden perderse o retrasarse si no se manejan adecuadamente, lo que puede llevar a problemas de estabilidad y consistencia del sistema. |
| Memoria compartida | * Es una forma rápida y eficiente para que los procesos se comuniquen entre sí, ya que los procesos pueden leer y escribir directamente en la memoria compartida. <br /> * Permite que los procesos compartan datos fácilmente y actualicen la información en tiempo real. <br /> * Es más fácil de implementar en situaciones donde los procesos están en la misma máquina, ya que no hay sobrecarga de comunicación. | * Puede haber problemas de sincronización y acceso concurrente a los datos compartidos, especialmente en sistemas grandes y complejos. <br /> * La comunicación a través de memoria compartida puede ser más difícil de depurar y mantener que la comunicación basada en mensajes. <br /> * Puede ser más difícil de implementar si los procesos se ejecutan en diferentes máquinas. |


### 8. Conteste las siguientes preguntas:
* Cual es la principal ventaja de usar microkernel en el diseño del OS?

La principal ventaja de usar un microkernel en el diseño de un sistema operativo es la modularidad. En un microkernel, el kernel en sí mismo es pequeño y maneja solo las funciones más básicas del sistema, como la gestión de procesos, la gestión de memoria y la comunicación interproceso. Todos los demás servicios del sistema operativo se ejecutan como procesos de usuario fuera del kernel, lo que significa que pueden ser agregados o eliminados sin tener que modificar el núcleo en sí. Esto hace que el sistema operativo sea mucho más flexible y fácil de mantener que un kernel monolítico, evitando así la propagación directa de fallos en el sistema.

* Como interactúan los programas de usuario y los servicios del OS en una arquitectura basada en microkernel?

En una arquitectura basada en microkernel, los programas de usuario y los servicios del sistema operativo interactúan a través de una interfaz de comunicación que permite la comunicación interproceso. Los programas de usuario pueden solicitar servicios al sistema operativo, como la gestión de archivos o la asignación de memoria, y el sistema operativo puede enviar notificaciones a los programas de usuario cuando ocurren eventos importantes, como la llegada de una interrupción de hardware, este tipo de interacción también es conocido como "paso de mensajes", ya que, intercambian mnesajes entre si.

* Cuales son las desventajas de usar la arquitectura de microkernel?

Las desventajas de usar la arquitectura de microkernel incluyen la sobrecarga de la comunicación interproceso, ya que, las solicitudes de servicios del sistema operativo deben pasar a través de la interfaz de comunicación, lo que puede disminuir el rendimiento. También puede haber una mayor complejidad en el diseño y la implementación del sistema operativo, ya que los servicios del sistema operativo se ejecutan como procesos de usuario separados

### 9. Compare las ventajas y desventajas de usar VM.

| Ventajas | Desventajas |
| --- | --- |
| Permite la ejecución de múltiples sistemas operativos en una misma máquina física | Requiere de una cantidad significativa de recursos de hardware, como memoria RAM y capacidad de procesamiento |
| Facilita la creación de entornos de desarrollo y pruebas separados y aislados | La sobrecarga de virtualización puede afectar el rendimiento de las aplicaciones |
| Aumenta la seguridad del sistema, ya que los sistemas operativos invitados se ejecutan en un entorno aislado | Puede haber problemas de compatibilidad entre el hardware físico y los sistemas operativos invitados |
| Permite la migración de sistemas operativos invitados entre diferentes máquinas físicas | Puede haber problemas de licenciamiento si los sistemas operativos invitados no tienen licencia para su uso en máquinas virtuales |
| Permite la optimización de recursos, ya que varios sistemas operativos invitados pueden compartir los recursos de la máquina física | El tiempo de arranque de la máquina virtual puede ser más lento que el de una máquina física |
| Facilita la creación de copias de seguridad y la recuperación de sistemas operativos invitados | La administración de múltiples máquinas virtuales puede ser compleja y requerir más tiempo y recursos |
| Permite la creación de entornos de producción escalables y flexibles | La virtualización puede introducir latencia y degradar el rendimiento en entornos de tiempo real |
| Reduce la necesidad de hardware dedicado para entornos específicos | Puede haber limitaciones en la cantidad de hardware virtualizado que una máquina física puede soportar |
