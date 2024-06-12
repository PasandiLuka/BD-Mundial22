## Guía de Triggers

_Para esta guía pueden usar funciones y procedimientos generados en guías anteriores_. También te recomiendo que inicialices la BD (mira como, en la sección de **[Despliegue](../../README.md#despliegue-))**.

1. Realizar un trigger que previo a insertar un Gol, verifique el jugador del mismo, haya jugado ese partido en ese momento determinado, caso contrario no permitir la operación y emitir la leyenda `'Este jugador no jugó el partido en ese momento'`.
1. Realizar un trigger que luego de ingresar un gol, incremente en uno el contador de el resultado del equipo correspondiente. Tener en cuenta que solo suman a favor los goles que no son en contra (`Gol.enContra = FALSE`), en caso de que el gol sea en contra (`Gol.enContra = TRUE`), sumar el tanto al equipo contrario.
1. Solo pueden participar en las definiciones por penales los jugadores que hayan terminado jugando el partido, es decir aquellos con `JugadorPartido.egreso` y `JugadorPartido.egresoAdicionado` igual a NULL, ademas de verificar que el partido en cuestión haya terminado en empate. Se pide desarrollar 2 triggers:  
    - El primero que verifique antes de la inserción que el partido tenga como resultado el empate, caso contrario emitir la leyenda `'El partido no terminó en empate.'`
    - El segundo (que se ejecuta luego del primero) tiene que verificar que el ejecutando del penal, haya terminado jugando el partido, caso contrario emitir la leyenda `'Este jugador no esta habilitado a definir por penal'`.

Pueden consultar como **ordenar la ejecución de triggers**  sobre una misma tabla, operación y momento en **[este link de MySQLTutorial.org](https://www.mysqltutorial.org/mysql-triggers/create-multiple-triggers-for-the-same-trigger-event-and-action-time/)**.

### Inserts para facilitar la pruebas

```sql
-- Punto 1 - Este insert tiene que fallar porque Armani no jugó ningún partido para Arg.
INSERT INTO Gol (idJugador, idPartido, minuto, adicionado, enContra) 
    VALUES      (   1,        1,        13,   TRUE);

-- Punto 1 - Este insert tiene que fallar porque Tagliafico se retiró del partido al minuto 71
INSERT INTO Gol (idJugador, idPartido, minuto, adicionado, enContra) 
    VALUES      (   3,        1,        74,   NULL,     FALSE);
```

```sql
-- Punto 2 - Este insert tiene que actualizar el resultado del partido porque es valido
INSERT INTO Gol (idJugador, idPartido, minuto, adicionado, enContra) 
    VALUES      (   1,        1,        74,     NULL,     FALSE);

-- Al hacer esta consulta, tiene que dar 2 - 2 (originalmente perdimos, pero es para probar) luego del insert anterior.
SELECT golesLocales, golesVisitantes
FROM Partido WHERE idPartido = 1;

-- Gol en contra de Messi.
INSERT INTO Gol (idJugador, idPartido, minuto, adicionado, enContra) 
    VALUES      (   10,        1,        80,   FALSE);

-- Y ahora el partido debería terminar 3 para el local y 2 para el visitante.
SELECT golesLocales, golesVisitantes
FROM Partido WHERE idPartido = 1;
```

```sql
-- Punto 3 - Este insert tiene que fallar porque el partido no terminó en empate (Arg-Mex).
INSERT INTO DefinicionPenal (idPartido, idJugador, turno, acierto)
    VALUES                  (2,         10,        1,   TRUE);

-- Punto 3 - Aca tiene que fallar, porque Nahuel Molina no terminó la final contra Francia.
INSERT INTO DefinicionPenal (idPartido, idJugador, turno, acierto)
    VALUES                  (7,         26,        14,   TRUE);

```