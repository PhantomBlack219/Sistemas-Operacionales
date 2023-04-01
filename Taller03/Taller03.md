### 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.
*  Mencione dos problemas y expliquelos. 
| Los usuarios podrían tener acceso a la información confidencial de otros usuarios siendo un gran peligro debido a un posible robo de dicha información. |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Al ser un entorno compartido cualquier tipo de vulnerabilidad o algún malware  podría generar grandes problemas a la información que maneje cada uno de los usaurios  |
*  ¿Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un
   sistema dedicado?. Explique su respuesta.
Se podria llegar a un nivel razonable de seguridad con la implementación de medidas como controles de acceso e implementación de politicas de seguridad adecuadas, aunque realmente no considero que se pueda llegar al mismo nivel de seguridad y que una única vulnerabilidad puede perjudicar a muchos usuarios.
### 2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):
* Sistemas embebidos
* Mainframe
* Workstation
* Server
* Mobile
### 3. Caracterice dos casos de uso para implementar un OS para servidor y PC.
| Servidores de alta carga                               | Los servidores de alta carga deben ser capaces de manejar múltiples solicitudes y tareas simultaneas, deben ser altamente escalables y seguro un ejemplo de OS en estos casos sería Linux. |
|--------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Estaciones de trabajo para diseño gráfico o multimedia | Los OS para diseño grafico o deben ser capaces de manejar  aplicaciones con un gran gasto de recursos, manejo de ram y almacenamiento, un ejemplo de OA en estos casos sería macOS         |
### 4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.
El multiprocesamiento simétrico (SMP) implica el uso de múltiples procesadores idénticos que comparten una única memoria compartida y un sistema operativo común. Todos los procesadores en un sistema SMP tienen acceso igualitario a la memoria y pueden realizar cualquier tarea en cualquier momento. Los sistemas SMP son ampliamente utilizados en servidores de alto rendimiento y supercomputadoras.

Por otro lado, el multiprocesamiento asimétrico (ASMP) implica el uso de múltiples procesadores diferentes, donde cada procesador tiene una tarea específica asignada y acceso a una memoria dedicada. En un sistema ASMP, cada procesador tiene una función específica, y no comparten la misma jerarquía en términos de acceso a memoria y procesamiento. Este tipo de multiprocesamiento se utiliza a menudo en sistemas integrados y dispositivos móviles.
### 5. Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un
servicio de alta disponibilidad (HA).
### 6. Compare las diferencias entre una excepción y una interrupción.
### 7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la
CPU.
* ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia?
* ¿Como sabe la CPU que las operaciones de memoria se han completado?
### 8. Identifique dos razones por las que la cache es útil. ¿Que problemas resuelve y causa?.
|                                                                            **Razones por las que la caché es útil**                                                                               |                                                                          **Problemas que la caché puede causar**                                                                           |
|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| La caché permite almacenar datos en una memoria más cercana al procesador por lo que permite acceder a los datos de manera más rápida  mejorando el rendimiento de los sistemas informaticos.     | Los dispositivos pueden tener copias diferentes de los mismos datos generando problemas de consitencia, sobretodo cuando 2 dispositivos  acceden a los mismos datos.                    |
| La caché guarda los datos que se prevé que se solicitarán con frecuencia por lo que los datos no tienen que viajar a través de la red cada vez que se solicitan, lo que reduce el trafico de red. | Al tener una capacidad limitada si se almacenan muchos datos pueden eliminarse datos importantes, e incluso si no se usan los datos de la caché esto simboliza una perdida de recursos. |
### 9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos:
* Sistema distribuido : En los sistemas distribuidos a la hora de cambiar un dato es necesario enviar un mensaje de aceptación a todos los equipos que tengan una copia del mismo dato, por lo tanto si el protocolo que envia dichos datos falla de alguna forma se puede generar un problema de coherencia con los otros equipos que no han recibido la actualización del datos
* Sistema multiprocesador: Este caso es muy similar al anterior lo que cambia es que el manejo de la memoria se realiza de manera local, por lo tanto si el envio de mensajes falla pués puede haber un procesador que no actualice el dato y genere problemas de coherencia
* Sistema de un solo procesador: los sistemas de un solo procesador por lo general utilizan más de un nucleo, por lo que si hay 2 nucleos que intenten acceder a la misma area de memoria caché puede suceder que se actualice al tiempo con distintos datos y dicho dato genere luego problemas de procesamiento y lectura
