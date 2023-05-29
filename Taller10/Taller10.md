### 1. Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.

Las cuatro condiciones necesarias para que se produzca un interbloqueo son: exclusión mutua, retención y espera, no apropiación y espera circular¹. En la imagen, se puede ver que:

- Exclusión mutua: cada coche es un recurso compartido que solo puede ser utilizado por un proceso (conductor) a la vez.
- Retención y espera: cada proceso (conductor) tiene asignado un recurso (coche) y espera al menos otro recurso (espacio libre) que está asignado a otro proceso.
- No apropiación: ningún proceso (conductor) puede quitar el recurso (coche) que está asignado a otro proceso sin su consentimiento.
- Espera circular: existe una cadena circular de procesos (conductores) que esperan recursos (espacio libre) que están asignados a otros procesos de la cadena.

### 2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.

Podría ser que ningún proceso (conductor) puede entrar en el cruce de cuatro vías si no hay espacio libre para salir del mismo. De esta forma, se rompe la condición de espera circular y se evita el interbloqueo.

### 3. Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.

El problema de la cena de los filósofos es un ejemplo clásico de interbloqueo en sistemas operativos. Consiste en cinco filósofos sentados alrededor de una mesa circular con cinco platos de espaguetis y cinco tenedores entre ellos. Cada filósofo solo puede comer si tiene dos tenedores, uno a cada lado. Los filósofos alternan entre pensar y comer. En este problema, se cumplen las condiciones básicas de interbloqueo de la siguiente manera:

- Exclusión mutua: cada tenedor es un recurso compartido que solo puede ser utilizado por un filósofo a la vez.
- Retención y espera: cada filósofo puede tener asignado un tenedor y esperar otro tenedor que está asignado a otro filósofo.
- No apropiación: ningún filósofo puede quitar el tenedor que está asignado a otro filósofo sin su consentimiento.
- Espera circular: existe una cadena circular de filósofos que esperan tenedores que están asignados a otros filósofos de la cadena.

### 4. Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.

Podría ser que ningún filósofo puede tomar un tenedor si no hay otro tenedor disponible a su lado. De esta forma, se rompe la condición de retención y espera y se evita el interbloqueo.

### 5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tiempo de ejecución adicional necesario.

El esquema de espera circular es una forma de prevención de interbloqueos que consiste en imponer un orden total sobre todos los recursos del sistema y hacer que cada proceso solicite los recursos siguiendo ese orden. De esta forma, se rompe la condición de espera circular y se evita el interbloqueo. Este esquema requiere un tiempo de ejecución adicional para determinar el orden total y verificar que cada proceso lo cumpla.

Los distintos esquemas de evasión de interbloqueos son formas de detección y recuperación de interbloqueos que consisten en permitir que el sistema entre en un estado de interbloqueo y luego aplicar algún algoritmo para detectarlo y resolverlo. Estos esquemas requieren un tiempo de ejecución adicional para recopilar información sobre el estado del sistema, ejecutar el algoritmo de detección y aplicar alguna acción de recuperación, como abortar o retroceder algunos procesos.

En general, el esquema de espera circular tiene un menor tiempo de ejecución adicional que los esquemas de evasión de interbloqueos, ya que evita que el sistema entre en un estado de interbloqueo y no necesita aplicar ninguna acción de recuperación. Sin embargo, el esquema de espera circular puede ser más restrictivo y menos flexible que los esquemas de evasión de interbloqueos, ya que impone un orden total sobre los recursos y puede provocar una menor utilización de los mismos.

### 6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.

La tasa de procesamiento del sistema es una medida del rendimiento del sistema que indica el número de procesos que se completan por unidad de tiempo. Esta medida depende de la utilización de los recursos y del grado de concurrencia del sistema.

El esquema de espera circular es una forma de prevención de interbloqueos que puede afectar negativamente a la tasa de procesamiento del sistema, ya que impone un orden total sobre los recursos y puede provocar una menor utilización de los mismos. Además, este esquema puede generar una mayor latencia en la ejecución de los procesos, ya que pueden tener que esperar a que se liberen los recursos siguiendo el orden establecido.

Los distintos esquemas de evasión de interbloqueos son formas de detección y recuperación de interbloqueos que pueden afectar positiva o negativamente a la tasa de procesamiento del sistema, dependiendo del algoritmo y la acción de recuperación que se utilicen. Estos esquemas pueden permitir una mayor utilización y concurrencia de los recursos, ya que no imponen ningún orden sobre los mismos. Sin embargo, estos esquemas también pueden generar una mayor sobrecarga en el sistema, ya que requieren recopilar información sobre el estado del sistema, ejecutar el algoritmo de detección y aplicar alguna acción de recuperación, como abortar o retroceder algunos procesos.


### 7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos; cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos.

Un sistema está libre de interbloqueos si no se cumplen las cuatro condiciones necesarias para que se produzca un interbloqueo.
Exclusión mutua, retención y espera, no apropiación y espera circular¹. En este caso, se puede demostrar que el sistema está libre de interbloqueos rompiendo la condición
de espera circular.

Supongamos que cada proceso necesita como máximo dos recursos del mismo tipo. Entonces, hay tres posibles asignaciones iniciales:

- A) Cada proceso tiene asignado un recurso y espera otro recurso.
- B) Dos procesos tienen asignados dos recursos cada uno y el otro proceso no tiene ningún recurso asignado.
- C) Un proceso tiene asignados dos recursos y los otros dos procesos tienen asignado un recurso cada uno.

En el caso A), no hay espera circular, ya que siempre habrá al menos un recurso libre que pueda ser asignado a algún proceso. Por ejemplo, si P1 tiene R1 y espera R2, P2 tiene R2 y espera R3, P3 tiene R3 y espera R4, entonces R4 está libre y puede ser asignado a P3. Luego P3 libera R3 y R4, y pueden ser asignados a P2 y P1 respectivamente.

En el caso B), no hay espera circular, ya que los dos procesos que tienen asignados dos recursos cada uno no necesitan

Perdón, se me pasaron esas preguntas. Aquí están las respuestas:

### 8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una. Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.

Podría ser que un filósofo solo puede solicitar un palillo si hay al menos tres palillos libres en el centro de la mesa. De esta forma, se garantiza que siempre habrá al menos un filósofo que pueda comer con dos palillos y no se formará una espera circular.

### 9. Cual es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?

La suposición optimista realizada en el algoritmo de detección de interbloqueos es que el sistema puede conceder a cada proceso todos los recursos que necesita para completar su ejecución una vez que se detecta y resuelve el interbloqueo. Esta suposición podría violarse si el sistema no tiene suficientes recursos disponibles para satisfacer las demandas de todos los procesos o si los procesos cambian sus demandas después de la detección del interbloqueo.