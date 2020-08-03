# EMACS LATAM #

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

**ADVERTENCIA**: Esto sobreescribirá la configuración actual.


## Secuencias de borrar / cortar ##

No soy un gran fan de las secuencias de teclado que emacs tiene predeterminadas.
Muchas son particulares para teclados americanos y otras tantas no tienen mucho
sentido (el tipo de secuencia de `C-x k` para cortar hasta el final de la línea
aunque cortar una región sea `C-w` y borrar un carácter sea `C-d`).

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


