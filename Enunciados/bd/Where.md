## Guía de Where

1. Mostrar el nombre y grupo de los países que pertenezcan a los grupos `'A'`, `'C'` o `'H'` siempre y cuando sus nombres tengan al menos 2 letras `'A'` y no posean la letra `'L'`.
1. Mostrar apellido, nombre de los jugadores con `idPais` igual a `1` siempre y cuando su numero de camiseta se encuentre entre `1` y `11` (inclusive) y hayan nacido entre el 1 de Enero de 1987 y el 31 de Diciembre de 1995 (inclusive).
1. Mostrar `idPartido`, `minuto`, `adicionado` de los goles que **NO** sean en contra y que se dieran en tiempo adicionado o superando el minuto `100`.
1. Mostrar `idJugador`, `turno` y `acierto` de las definiciones por penal siempre y cuando pertenezcan al `idPartido` 7 y el `turno` del penal sea par. Ordenar por turno de menor a mayor.
1. Mostrar sin repetición los `idJugador` de aquellos jugadores que hayan jugado al menos un _"partido entero"_ (`ingreso` y `egreso ` son _NULOS_). Ordenar por `idJugador` de menor a mayor.

[<< Volver](README.md)