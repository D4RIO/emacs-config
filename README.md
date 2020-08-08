# MI CONFIGURACIÓN DE EMACS - LATAM #

Mayormente para teclados español/latinoamérica.

Consultas / sugerencias: <rodriguez.dario.a@gmail.com>


## Tiempo de carga ##

Esta configuración tarda en cargarse porque refresca (m)elpa y verifica que
todos mis paquetes favoritos se encuentran instalados. De esta forma, se puede
trabajar con esta configuración "out-of-the-box" mediante:

``` bash
git clone https://www.github.com/D4RIO/emacs-latam emacs-latam
cp -p emacs-latam/.emacs ~
cp -rvp emacs-latam/.emacs.d ~
emacs
```

**ADVERTENCIA**: Esto sobreescribe la configuración actual.


## Secuencias de borrar / cortar ##

No soy un gran fan de las secuencias de teclado que emacs tiene predeterminadas.
Muchas son particulares para teclados americanos y otras tantas no tienen mucho
sentido. Es el caso de `C-x k` para cortar hasta el final de la línea, aunque
cortar una región sea `C-w` y borrar un carácter sea `C-d`.

Para solucionar esto, quité la secuencia `C-x k` y dejé una familia de
secuencias de borrado/cortado (DEL) (la diferencia radica en que el cortado
usa el kill-ring y se puede recuperar su contenido):

Las secuencias de borrado son secuencias sin soltar el CTRL, lo cual es cómodo.


| SECUENCIA |                                ACCION |
|----------:|--------------------------------------:|
| `C-d C-a` | Cortar hasta el principio de la línea |
| `C-d C-e` |     Cortar hasta el final de la línea |
| `C-d C-l` |                  Cortar toda la línea |
| `C-d C-r` |                     Cortar una región |
| `C-d C-c` |                    Borrar un carácter |
| `C-d C-g` |      Cancela una secuencia de borrado |

Esto se suma a `C-<backspace>` para borrar una palabra, ya existente. Esta
secuencia tiene sentido porque se suma al uso de CTRL con las teclas de
navegación, que se usa para navegar por palabras (adelante y atrás), o
por párrafos (arriba y abajo).


## Navegación latam (KOÑL) ##

Tener la Ñ en el teclado es una ventaja cuando se tiene que elegir cómo navegar.

La primer opción fue navegación tipo gamer: AWDS.

La idea me atrajo, pero uso ',' y '.' para navegar a definiciones de función, y
uso '{' y '}' para navegar por párrafos y páginas. Es decir, toda mi navegación
es con la mano derecha, y uso la mano izquierda para acciones (De ahí que las
secuencias más simples de C-d sean con a, e y c. Un poco C-d C-l funciona como
un mecanismo de seguridad para evitar andar borrando líneas completas por error).

Esto no es un problema si no se usa CTRL, pero pasar de una mano a la otra y
mantener un CTRL presionado es un poco más complicado (usar el meñique puede ser
muy malo, por eso otros dedos para manejar el CTRL muchas veces). Si se va a
navegar por el código, entonces se mantiene la mano izquierda apartada, con uno
o dos dedos sobre el CTRL. Después se decide que se va a borrar algo, ejecutar
un comando, evaluar una expresión Lisp, guardar, etc., y es la mano derecha la
que se aparta. Por lo menos esta es la idea, veamos qué tan cómodo es.

| SECUENCIA |         ACCION |
|----------:|---------------:|
|     `C-k` |    Atrás (`<`) |
|     `C-o` |   Arriba (`^`) |
|     `C-ñ` | Adelante (`>`) |
|     `C-l` |    Abajo (`v`) |


## Javascript / JSX ##

Uso Emacs para JavaScript / JSX / React. Todavía tengo pocas mañas con esto:

|    SECUENCIA |                                                        ACCION |
|-------------:|--------------------------------------------------------------:|
|        `C-.` |                              Ir a la definición de la función |
|        `C-,` | Volver a la posición anterior (después de ver una definición) |
|        `C-?` |                                 Buscar referencias al símbolo |
| `C-<return>` |                                     Arreglar error (tide-fix) |


## Markdown ##

Redefinición de las combinaciones de avance por páginas. La navegación rápida
en MD es preferentemente por título.

| SECUENCIA |                                      ACCION |
|----------:|--------------------------------------------:|
|   `C-M-{` | Retroceder hasta el anterior título visible |
|   `C-M-}` |     Avanzar hasta el próximo título visible |

