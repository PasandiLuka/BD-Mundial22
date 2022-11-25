START TRANSACTION ;
    SELECT time_zone INTO @actual; 
    SET time_zone ='-03:00';
    INSERT INTO Pais (idPais, nombre, nombreEntrenador, idGrupo)
        VALUES  (1, 'Argentina', 'Lionel Scaloni', 3),
                (2, 'Qatar', 'Félix Sanchez Bas', 1),
                (3, 'Ecuador', 'Gustavo Alfaro', 1),
                (4, 'Inglaterra', 'Gareth Southgate', 2),
                (5, 'Estados Unidos', 'Gregg Berhalter', 2),
                (6, 'Mexico', 'Gerardo Marino', 3),
                (7, 'Francia', 'Didier Deschamps', 4),
                (8, 'Australia', 'Graham Arnold', 4),
                (9, 'España', 'Luis Enrique', 5),
                (10, 'Alemania', 'Hansi Flick', 5),
                (11, 'Belgica', 'Roberto Martinez', 6),
                (12, 'Croacia', 'Zlatko Dalic', 6),
                (13, 'Brasil', 'Tite', 7),
                (14, 'Suiza', 'Murat Yakin', 7),
                (15, 'Portugal', 'Fernando Santos', 8),
                (16, 'Uruguay', 'Diego Alonso', 8);

    INSERT INTO Posicion (idPosicion, posicion)
        VALUES  (1, 'Arquero'),
                (2, 'Defensor Central'),
                (3, 'Lateral Derecho'),
                (4, 'Lateral Izquierdo'),
                (5, 'Mediocampista'),
                (6, 'Delantero');

    INSERT INTO Jugador (idJugador, nombre, nacimiento, numCamiseta, idPais, idPosicion)
        VALUES  (23, 'Emiliano Martinez', '1992-09-02', 23, 1, 1),
                (13, 'Cristian Romero', '1998-04-27', 13, 1, 2),
                (19, 'Nicolas Otamendi', '1988-02-12', 19, 1, 2),
                (8, 'Marcos Acuña', '1991-10-28', 8, 1, 4),
                (26, 'Nahuel Molina', '1998-04-06',26 , 1, 3),
                (5, 'Leandro Paredes', '1994-06-29', 5, 1, 5),
                (7, 'Rodrigo de Paul', '1994-05-24', 7, 1, 5),
                (10, 'Lionel Messi', '1987-06-24', 10, 1, 6),
                (11, 'Angel Di Maria', '1988-02-14', 11, 1, 6),
                (22, 'Lautaro Martinez', '1997-08-22', 22, 1, 6),
                (29, 'Diogo Costa', '1999-09-19',22 ,15, 1),
                (30, 'Pepe', '1983-02-26', 3, 15, 2),
                (31, 'Ruben Dias', '1997-05-14', 4, 15, 2),
                (32, 'Joao Cancelo', '1994-05-27', 20, 15, 3),
                (33, 'Nuno Mendes', '2002-06-19', 19, 15, 4),
                (34, 'Ruben Neves', '1997-03-13', 18, 15, 5),
                (35, 'Vitinha', '2000-02-13', 11, 15, 5),
                (36, 'Bruno Fernandes', '1994-09-08', 8, 15, 5),
                (37, 'Joao Felix', '1999-11-10', 25, 15, 6),
                (38, 'Cristiano Ronaldo', '1985-02-05', 7, 15, 6),
                (39, 'Andre Silva', '1995-11-06', 19, 15, 6);


    SET time_zone = @actual;
