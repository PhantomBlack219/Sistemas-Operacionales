### **1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda.**

El soporte por hardware requerido para implementar la paginación bajo demanda es una **unidad de gestión de memoria** que pueda traducir las direcciones virtuales a físicas y que tenga un **bit de validez** para cada entrada de la tabla de páginas, que indique si la página está o no en memoria. Además, se necesita un **dispositivo de disco** donde se almacenen las páginas que no están en memoria y un **mecanismo de interrupción** que genere un **fallo de página** cuando se intente acceder a una página no residente.

### **2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?**

La característica de copia durante la escritura es una técnica de optimización que consiste en **no copiar** las páginas de memoria compartidas entre procesos hasta que uno de ellos intente **modificarlas**. En ese momento, se crea una copia de la página solo para el proceso que la escribe, mientras que el resto sigue accediendo a la original. Esta característica es ventajosa cuando se quiere **ahorrar espacio** y **tiempo** al crear procesos mediante la llamada fork, ya que se evita copiar todo el espacio de direcciones del proceso padre al hijo.

### **3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?**

El soporte de hardware requerido para implementar las características de copia durante escritura es similar al de la paginación bajo demanda, pero con algunas diferencias. Se necesita una MMU que pueda marcar las páginas compartidas como **de solo lectura**, un dispositivo de disco donde se almacenen las copias de las páginas modificadas y un mecanismo de interrupción que genere una **excepción** cuando se intente escribir en una página compartida. Además, se necesita un **contador** para cada página compartida que indique el número de procesos que la usan, para poder liberarla cuando ya no sea necesaria.

### **4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.**

Una situación en la que el algoritmo de sustitución de las páginas menos frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas más recientemente utilizadas es cuando el proceso tiene un **comportamiento cíclico**, es decir, cuando accede repetidamente a un conjunto de páginas en el mismo orden. En ese caso, el algoritmo LRU reemplazaría siempre la página a la que se va a acceder a continuación, mientras que el algoritmo LFU mantendría las páginas más usadas en memoria.

### 5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.

Una situación en la que el algoritmo de sustitución de las páginas más frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas es cuando el proceso tiene un **cambio de fase**, es decir, cuando deja de usar un conjunto de páginas y empieza a usar otro diferente. En ese caso, el algoritmo LRU reemplazaría las páginas antiguas por las nuevas, mientras que el algoritmo MFU seguiría manteniendo las páginas más usadas en el pasado, aunque ya no sean necesarias.

### 6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:
* Si se produce un fallo de página y la página se encuentra en el conjunto compartidos de 
marcos libres, ¿cómo puede generarse espacio libre para la nueva página solicitada?

    - Se busca la página menos recientemente utilizada en el conjunto compartido de marcos libres y se elimina de la memoria.
    - Se carga la nueva página solicitada en el marco libre que se ha liberado.
    - Se actualiza la tabla de páginas para indicar el nuevo marco asignado a la página solicitada.

* Si se produce un fallo de página y la página se encuentra en el conjunto compartido de 
marcos libres, ¿cómo se activa la página residente y cómo se gestiona el conjunto 
compartido de marcos libres para hacer sitio para la página solicitada?

    - Se busca la página más antigua en el conjunto residente y se elimina de la memoria.
    - Se carga la nueva página solicitada en el marco libre que se ha liberado.
    - Se actualiza la tabla de páginas para indicar el nuevo marco asignado a la página solicitada.
    - Se añade la página eliminada del conjunto residente al conjunto compartido de marcos libres.

### 7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:
* Uso de CPU 20%
* Paginación de disco 97,7%
* Otros dispositivos de I/O 5%
Para las siguientes afirmaciones, indique si permitirá o es probable que permita mejorar las 
tasas de utilización de la CPU. De razones para su respuesta.
* Instalar una CPU más rápida.

No permitirá mejorar las tasas de utilización de la CPU, ya que el cuello de botella está en el disco de paginación, que está casi al 100% de uso. La CPU tendrá que esperar a que el disco termine las operaciones de lectura y escritura de las páginas, lo que reducirá su rendimiento.

* Instalar un disco de paginación de mayor tamaño.

No, ya que el tamaño del disco no afecta a la velocidad con la que se accede a las páginas. El disco seguirá siendo el recurso más escaso y limitante del sistema.

* Incrementar el grado de multiprogramación.

Por el contrario lo empeorará. Al incrementar el grado de multiprogramación, se aumenta el número de procesos en memoria y, por tanto, la demanda de páginas. Esto provocará más fallos de página y más operaciones de disco, lo que ralentizará aún más el sistema.

* Instalar mas memoria principal.

Sí permitirá mejorar las tasas de utilización de la CPU, ya que al tener más memoria principal se pueden alojar más páginas en ella y reducir los fallos de página. Esto disminuirá las operaciones de disco y liberará al sistema del cuello de botella. La CPU podrá aprovechar mejor su capacidad y ejecutar más instrucciones por unidad de tiempo.

* Instalar un disco duro mas rápidos.

Sí, ya que al tener un disco duro más rápido se pueden leer y escribir las páginas más rápidamente y reducir el tiempo de espera de la CPU. Esto también disminuirá las operaciones de disco y liberará al sistema del cuello de botella. La CPU podrá aprovechar mejor su capacidad y ejecutar más instrucciones por unidad de tiempo.

