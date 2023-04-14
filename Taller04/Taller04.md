# Investigación
Para esta practica, profundice lo hablado en clase. Investigue los siguientes tópicos y de su opinión:
### 1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías, descríbalas.
### 2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario.
### 3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa.
### 4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.
### 5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos.
### 6. Conteste las siguientes preguntas:
* Cual es el propósito del interprete de comandos?
* Por qué esta separado del kernel?
* Liste los requisitos para desarrollar un interprete de comandos.
### 7. Compare las ventajas y desventajas de los modelos de intercomunicación.
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
