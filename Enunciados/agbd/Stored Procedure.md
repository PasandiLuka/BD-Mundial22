## Guía de Stored Procedure y Stored Function

1. Realizar los SPs necesarios para dar de alta en las tablas País, Jugador, Estadio teniendo en cuenta que se pretende que su devolución el idGenerado por la BD. Para el orden de los parámetros, por favor respete el orden de creación de los atributos según el script ddl. Tener en cuenta, que para el sp de alta en partido, **NO SE TIENE QUE INGRESAR LOS GOLES**, ya que la cantidad de estos al crear la tabla, siempre es 0 (_cero_) para cada uno (`golesLocal` y `golesVisitante`).
1. Realizar la SF _'jugoLocal'_ que reciba por parámetro _unIdPartido_, _unIJugador_ y devuelva `TRUE` en caso de que el jugador juegue en el Equipo Local (País) de ese partido, caso contrario devolver `FALSE`. Realizar lo mismo en otra función llamada _'jugoVisitante'_.
1. Realizar la función _'jugoEn'_ que reciba por parámetro _unIdPartido_, _unIJugador_, _unMinuto_; la función devuelve `TRUE` en caso de que el jugador haya jugado ese partido, en ese tiempo. Una vez terminado el ejercicio, pensar en como encarar el tema del minuto adicionado si la función tuviese un cuarto parámetro  y _minutoAdicionado_ (el parámetro puede ser `NULL`).
1. Realizar un SP 'golesDelPartido'que reciba por parámetro _unIdPartido_, el SP tiene que devolver una tabla con los jugadores que hayan hecho gol en ese partido, ordenado por minuto de menor a mayor, ademas pensar en como serian las adiciones del minuto del gol (ejs: `38`, `45+3`, `90+3`) Para la parte del jugador se tiene que mostrar en una sola columna con el formato "_Apellido, Nombre (País)_" y tiene que haber una columna llamada _EC_ donde solo aparece '' o 'EC' si el gol fue en contra (para esta parte van a necesitar la [función de fila](https://www.w3schools.com/mysql/func_mysql_if.asp) `IF`). Ejemplo de salida:
```sql
CALL golesDelPartido (5) ; -- Argentina - Australia
```

| Jugador                       | Tiempo| EC  |
| ----------------------------- | :---: | --- |
| Lionel Messi (Argentina)      | 35    |     |
| Julián Álvarez (Argentina)    | 57    |     |
| Enzo Fernández (Argentina)    | 77    | EC  |