### 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.
*  Mencione dos problemas y expliquelos. 


| Los usuarios podrían tener acceso a la información confidencial de otros usuarios siendo un gran peligro debido a un posible robo de dicha información. |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Al ser un entorno compartido cualquier tipo de vulnerabilidad o algún malware  podría generar grandes problemas a la información que maneje cada uno de los usaurios  |
*  ¿Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un
   sistema dedicado?. Explique su respuesta.<br />
   
Se podria llegar a un nivel razonable de seguridad con la implementación de medidas como controles de acceso e implementación de politicas de seguridad adecuadas, aunque realmente no considero que se pueda llegar al mismo nivel de seguridad y que una única vulnerabilidad puede perjudicar a muchos usuarios.


### 2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):
* **Sistemas embebidos:**
    La memoria, el espacio de almacenamiento y el ancho de banda de E/S son recursos críticos en los sistemas embebidos. El sistema operativo debe administrar de manera efectiva estos recursos, ya que los sistemas embebidos suelen tener limitaciones en términos de capacidad de procesamiento y almacenamiento.
* **Mainframe:**
    La memoria, el almacenamiento en disco y la capacidad de procesamiento son recursos críticos en los sistemas mainframe. El sistema operativo debe ser capaz de gestionar eficazmente estos recursos para mantener un alto nivel de rendimiento debido al alto volumen de procesos que se ejecutan en paralelo.
* **Workstation:**
    La memoria, el procesador y la capacidad de almacenamiento son recursos críticos en las workstations, que suelen estar diseñadas para tareas intensivas en recursos. El sistema operativo debe ser capaz de gestionar eficazmente estos recursos para garantizar un alto nivel de rendimiento.
* **Server:**
    La memoria, la capacidad de procesamiento, el almacenamiento y la red son recursos críticos en los servidores. El sistema operativo debe ser capaz de gestionar eficazmente estos recursos y optimizar su uso para un alto nivel de rendimiento, debido al alto volumen de solicitudes que pueden recibir al mismo tiempo.
* **Mobile:**
    La batería, la memoria, la capacidad de procesamiento, la capacidad de almacenamiento y la red son recursos críticos en los dispositivos móviles. El sistema operativo debe ser capaz de gestionar eficazmente estos recursos para prolongar la vida útil de la batería y proporcionar una experiencia de usuario sin problemas. Además, la gestión de la red también es un recurso crítico en los dispositivos móviles, ya que pueden estar sujetos a restricciones de ancho de banda y conectividad.
    
    
### 3. Caracterice dos casos de uso para implementar un OS para servidor y PC.
| Servidores de alta carga                               | Los servidores de alta carga deben ser capaces de manejar múltiples solicitudes y tareas simultaneas, deben ser altamente escalables y seguro un ejemplo de OS en estos casos sería Linux. |
|--------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Estaciones de trabajo para diseño gráfico o multimedia | Los OS para diseño grafico o deben ser capaces de manejar  aplicaciones con un gran gasto de recursos, manejo de ram y almacenamiento, un ejemplo de OA en estos casos sería macOS         |


### 4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.<br />
El multiprocesamiento simétrico (SMP) implica el uso de múltiples procesadores idénticos que comparten una única memoria compartida y un sistema operativo común. Todos los procesadores en un sistema SMP tienen acceso igualitario a la memoria y pueden realizar cualquier tarea en cualquier momento. Los sistemas SMP son ampliamente utilizados en servidores de alto rendimiento y supercomputadoras.

Por otro lado, el multiprocesamiento asimétrico (ASMP) implica el uso de múltiples procesadores diferentes, donde cada procesador tiene una tarea específica asignada y acceso a una memoria dedicada. En un sistema ASMP, cada procesador tiene una función específica, y no comparten la misma jerarquía en términos de acceso a memoria y procesamiento. Este tipo de multiprocesamiento se utiliza a menudo en sistemas integrados y dispositivos móviles.


### 5. Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA).
 1. **Conectividad de red:** Las máquinas deben estar conectadas a través de una red confiable y de alta velocidad, para poder comunicarse entre ellas y compartir recursos.
 2. **Hardware compatible:**  Las máquinas deben tener hardware compatible, incluyendo CPU, memoria, almacenamiento y otros componentes, para garantizar que puedan trabajar juntas de manera eficiente.
 3. **Sistema operativo homogéneo:** Las máquinas deben tener el mismo sistema operativo, versión y configuración, para que las aplicaciones se ejecuten de manera consistente en todas las máquinas.
 4. **Software de clúster:** Se requiere de un software de clúster que permita a las máquinas coordinar sus acciones y compartir recursos, así como detectar y recuperarse de fallas en tiempo real.
 5. **Almacenamiento compartido:** Las máquinas deben tener acceso a un almacenamiento compartido, como un sistema de archivos en red o un almacenamiento de área de almacenamiento (SAN), para poder compartir datos y garantizar la consistencia de los datos en todo el clúster.
 6. **Balanceo de carga:** Se debe contar con un mecanismo de balanceo de carga para distribuir el tráfico entre las máquinas del clúster, asegurando que el servicio se mantenga disponible incluso en caso de que una máquina falle o se desconecte.
 7. **Monitorización y gestión:** El clúster debe contar con herramientas de monitorización y gestión para permitir la detección y resolución de problemas de manera proactiva, así como la gestión del clúster en general.
 8. **Fuentes de alimentación y enfriamiento redundantes:** Las máquinas del clúster deben estar conectadas a fuentes de alimentación y sistemas de enfriamiento redundantes, para garantizar que puedan funcionar continuamente incluso en caso de fallas de hardware o energía.
 9. **Políticas de respaldo y recuperación ante desastres:** Es importante tener políticas y procedimientos de respaldo y recuperación ante desastres para asegurar que los datos estén protegidos y se puedan recuperar en caso de una falla importante.

 
### 6. Compare las diferencias entre una excepción y una interrupción.

|      | Excepción                                            | Interrupción                                          |
|------|------------------------------------------------------|-------------------------------------------------------|
| Definición | Una excepción es un evento que ocurre durante la ejecución de un programa y que interrumpe el flujo normal de la misma. | Una interrupción es una señal que se genera desde un dispositivo externo al procesador y que indica que se requiere la atención inmediata del mismo. |
| Origen | Las excepciones son generadas por el propio programa, debido a errores de programación o situaciones inesperadas. | Las interrupciones son generadas por dispositivos externos al procesador, como el teclado, el mouse, las tarjetas de red, etc. |
| Gestión | Las excepciones son gestionadas por el propio programa, que puede manejarlas y recuperarse de ellas, o finalizar su ejecución. | Las interrupciones son gestionadas por el sistema operativo, que debe atenderlas y determinar la acción a realizar en cada caso. |
| Prioridad | Las excepciones no tienen una prioridad definida y se procesan en el orden en que ocurren. | Las interrupciones tienen una prioridad asignada y se procesan de acuerdo a ella, con las de mayor prioridad atendidas primero. |
| Tiempo de respuesta | El tiempo de respuesta a una excepción depende del programa, que debe detectarla, gestionarla y recuperarse de ella, lo que puede llevar tiempo. | El tiempo de respuesta a una interrupción es muy rápido, ya que el procesador interrumpe su ejecución actual y atiende la interrupción de manera inmediata. |
| Ejemplos | Ejemplos de excepciones incluyen división entre cero, acceso a memoria no permitida, desbordamiento de pila, etc. | Ejemplos de interrupciones incluyen interrupciones de teclado, interrupciones de disco, interrupciones de red, etc. |


### 7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la
CPU.
* ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia? <br />
La CPU configura el controlador DMA para que este realice la transferencia de datos. Luego, el controlador DMA se encarga de transferir los datos desde el dispositivo de entrada/salida a la memoria sin la intervención de la CPU.
* ¿Como sabe la CPU que las operaciones de memoria se han completado? <br />
El controlador DMA envía una señal de interrupción a la CPU para notificarle que los datos han sido transferidos. La CPU verifica que los datos se hayan transferido correctamente y puede continuar con la siguiente tarea.


### 8. Identifique dos razones por las que la cache es útil. ¿Que problemas resuelve y causa?.
|                                                                            **Razones por las que la caché es útil**                                                                               |                                                                          **Problemas que la caché puede causar**                                                                           |
|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| La caché permite almacenar datos en una memoria más cercana al procesador por lo que permite acceder a los datos de manera más rápida  mejorando el rendimiento de los sistemas informaticos.     | Los dispositivos pueden tener copias diferentes de los mismos datos generando problemas de consitencia, sobretodo cuando 2 dispositivos  acceden a los mismos datos.                    |
| La caché guarda los datos que se prevé que se solicitarán con frecuencia por lo que los datos no tienen que viajar a través de la red cada vez que se solicitan, lo que reduce el trafico de red. | Al tener una capacidad limitada si se almacenan muchos datos pueden eliminarse datos importantes, e incluso si no se usan los datos de la caché esto simboliza una perdida de recursos. |


### 9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos:
* Sistema distribuido : En los sistemas distribuidos a la hora de cambiar un dato es necesario enviar un mensaje de aceptación a todos los equipos que tengan una copia del mismo dato, por lo tanto si el protocolo que envia dichos datos falla de alguna forma se puede generar un problema de coherencia con los otros equipos que no han recibido la actualización del datos
* Sistema multiprocesador: Este caso es muy similar al anterior lo que cambia es que el manejo de la memoria se realiza de manera local, por lo tanto si el envio de mensajes falla pués puede haber un procesador que no actualice el dato y genere problemas de coherencia
* Sistema de un solo procesador: los sistemas de un solo procesador por lo general utilizan más de un nucleo, por lo que si hay 2 nucleos que intenten acceder a la misma area de memoria caché puede suceder que se actualice al tiempo con distintos datos y dicho dato genere luego problemas de procesamiento y lectura
