### 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.
*  Mencione dos problemas y expliquelos.
*  ¿Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un
   sistema dedicado?. Explique su respuesta.
### 2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):
* Sistemas embebidos
* Mainframe
* Workstation
* Server
* Mobile
### 3. Caracterice dos casos de uso para implementar un OS para servidor y PC.
### 4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.
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
