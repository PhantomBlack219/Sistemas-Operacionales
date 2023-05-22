### 1. Cual es significado del termino espera activa?

El significado del término espera activa es una técnica donde un proceso repetidamente verifica una condición, tal como esperar una entrada de teclado o si el ingreso a una sección crítica está habilitado[^1^][1]. Puede ser una estrategia válida en algunas circunstancias especiales, sobre todo en la sincronización de procesos en los sistemas con múltiples procesadores (SMP). En general, debe ser evitada, ya que consume tiempo de CPU sin realizar ninguna operación[^2^][2].

### 2. De que manera se puede evitar la espera activa?

Una manera de evitar la espera activa es usar mecanismos de sincronización que bloqueen al proceso que espera una condición hasta que esta se cumpla, liberando así la CPU para otros procesos. Algunos ejemplos de estos mecanismos son las interrupciones, los semáforos, los monitores y las variables condicionales[^3^][3].

### 3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas  monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.

Los bloqueos mediante bucle sin fin (spin locks) no son apropiados para sistemas monoprocesador porque impiden que otros procesos puedan ejecutarse mientras el proceso que tiene el bloqueo está en la sección crítica. Esto reduce el rendimiento y la eficiencia del sistema. Sin embargo, se usan con frecuencia en los sistemas multiprocesador porque permiten que otros procesos puedan ejecutarse en otros procesadores mientras el proceso que tiene el bloqueo está en la sección crítica. Esto puede ser más rápido y simple que usar mecanismos de bloqueo que requieren interacción con el sistema operativo[^4^][4].

### 4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de  sincronización en los sistemas multiprocesador.

Las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador porque pueden causar inconsistencias y conflictos entre los procesadores que comparten memoria y recursos. Por ejemplo, si un proceso interrumpe a otro que está en la sección crítica y modifica un recurso compartido, puede violar la exclusión mutua y generar resultados erróneos. Además, las interrupciones pueden ser costosas y difíciles de manejar en sistemas con muchos procesadores.

### 5. Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de  exclusión mutua que satisfaga el requisito de espera limitada.

La instrucción swap() se puede utilizar para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada de la siguiente manera: cada proceso tiene una variable local booleana llamada interesado que indica si quiere entrar o no en la sección crítica. Además, hay una variable global llamada turno que indica a qué proceso le corresponde entrar en la sección crítica. El algoritmo es el siguiente:

* Para entrar en la sección crítica, un proceso P hace lo siguiente:
        - Pone su variable interesado en verdadero.
        - Intercambia el valor de su variable interesado con el de turno.
        - Espera hasta que turno sea falso o hasta que haya pasado un tiempo máximo.
        - Si turno es falso, entra en la sección crítica. Si no, pone su variable interesado en falso y vuelve a intentarlo.
* Para salir de la sección crítica, un proceso P hace lo siguiente:
        - Pone su variable interesado en falso.

este mecanismo garantiza que cada proceso que quiere entrar en la sección crítica lo hará en un tiempo finito, siempre y cuando haya un límite superior para el tiempo que un proceso permanece en la sección crítica.

### 6. Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas.  Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones  concurrentes.

Un servidor puede utilizar semáforos para limitar el número de conexiones concurrentes de la siguiente manera: hay un semáforo global llamado conexiones que tiene un valor inicial igual al número máximo de conexiones permitidas. El algoritmo es el siguiente:

* Cuando un cliente solicita una conexión al servidor, el servidor hace lo siguiente:
        - Decrementa el semáforo conexiones.
        - Si el semáforo es mayor o igual a cero, acepta la conexión y atiende al cliente.
        - Si el semáforo es menor que cero, rechaza la conexión y envía un mensaje de error al cliente.
* Cuando un cliente termina su conexión con el servidor, el servidor hace lo siguiente:
        - Incrementa el semáforo conexiones.

    Este mecanismo garantiza que el servidor no aceptará más conexiones de las que puede manejar y que liberará los recursos cuando las conexiones terminen.

### 7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear  para implementar los mismos tipos de problemas de sincronización.

Los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización, porque ambos son abstracciones de alto nivel que permiten controlar el acceso concurrente a recursos compartidos mediante mecanismos de exclusión mutua y condición de sincronización. Por ejemplo:

* Se puede implementar un monitor usando semáforos de la siguiente manera: hay un semáforo binario llamado mutex que controla el acceso al monitor y una cola de semáforos llamada next que controla la salida del monitor. Cada variable condicional del monitor tiene asociada una cola de semáforos llamada cond_queue y un contador llamado cond_count. El algoritmo es el siguiente:

        - Para entrar al monitor, un proceso P hace lo siguiente:
            - Decrementa el semáforo mutex.
            - Si mutex es menor que cero, espera hasta que sea mayor o igual a cero.
            - Si mutex es mayor o igual a cero, entra al monitor.
        - Para salir del monitor, un proceso P hace lo siguiente:
            - Si la cola next no está vacía, incrementa el semáforo next.
            - Si la cola next está vacía, incrementa el semáforo mutex.
            - Sale del monitor.
        - Para esperar una variable condicional C, un proceso P hace lo siguiente:
            - Incrementa el contador cond_count de C.
            - Si la cola next no está vacía, incrementa el semáforo next. Si no, incrementa el semáforo mutex.
            - Decrementa el semáforo cond_queue de C y espera en la cola.
            - Decrementa el contador cond_count de C.
        - Para señalar una variable condicional C, un proceso P hace lo siguiente:
            - Si el contador cond_count de C es mayor que cero, incrementa el semáforo cond_queue de C y decrementa el semáforo next.
            - Si no, no hace nada.

    - Se puede implementar un semáforo usando un monitor de la siguiente manera: hay una variable entera llamada valor que representa el valor del semáforo y una variable condicional llamada cola que representa la cola de espera del semáforo. El algoritmo es el siguiente:

        - Para decrementar el semáforo S, un proceso P hace lo siguiente:
            - Entra al monitor de S.
            - Si valor es menor o igual a cero, espera en la variable condicional cola.
            - Si valor es mayor que cero, decrementa valor.
            - Sale del monitor de S.
        - Para incrementar el semáforo S, un proceso P hace lo siguiente:
            - Entra al monitor de S.
            - Incrementa valor.
            - Señala la variable condicional cola.
            - Sale del monitor de S.


### 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado  para porciones pequeñas. Explique por qué es cierto esto.

La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas porque impide que dos o más procesos productores o consumidores accedan al búfer al mismo tiempo y evita así posibles inconsistencias o corrupciones en los datos. Además, como las porciones son pequeñas, el tiempo que cada proceso permanece en el monitor es corto y por lo tanto se reduce la probabilidad de bloqueo o inanición.

### 9. Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de  sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?

 Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador porque en los sistemas multiprocesador hay más posibilidades de paralelismo y rendimiento al permitir que otros procesos se ejecuten mientras uno espera por un recurso compartido. En cambio, en los sistemas monoprocesador esto no es posible y se desperdicia tiempo y recursos haciendo ciclos vacíos.