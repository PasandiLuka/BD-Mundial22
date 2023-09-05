## Guía de Group By y Having

1. Por cada jugador, mostrar nombre del país, apellido, nombre y cantidad de goles (con `Gol.enContra = false`) que tiene. Mostrar ordenado por cantidad de goles (mayor a menor) y luego por nombre de país y apellido, de menor a mayor.
1. Por cada estadio, mostrar su nombre y la cantidad de partidos del tipo 'Grupos' que se jugo en cada estadio. Ordenar por cantidad de mayor a menor.
1. Mostrar los nombres de las posiciones y cantidad de jugadores que juegan en ella siempre y cuando estos jugadores sean del grupo C y esta cantidad sea mayor a 20.
1. Por cada país, mostrar su nombre y la cantidad de penales acertados en definición (`DefinicionPenal.acierto = true`). Ordenar por cantidad de mayor a menor.
1. De cada jugador, dar el nombre de su país, apellido y nombre junto con la suma de minutos que jugó en todo el mundial. La formula es la siguiente:
    - Si ingreso y egreso son nulos, entonces jugó: `Partido.duracion`.
    - Si ingreso es nulo y egreso no, entonces jugó: `JugadorPartido.egreso`.
    - Si ingreso no es nulo y egreso si, entonces jugó: `Partido.duracion - JugadorPartido.ingreso`.
    - Caso contrario, entonces jugó: `JugadorPartido.egreso - JugadorPartido.ingreso`.

[<< Volver](README.md)