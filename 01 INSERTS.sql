USE bd_Mundial22;
-- La informaciòn se obtuvo de: https://www.fifa.com/fifaplus/es/tournaments/mens/worldcup/qatar2022

START TRANSACTION ;
    SET time_zone ='-03:00';
    INSERT INTO Pais (idPais, nombre, nombreEntrenador, grupo)
        VALUES  (1, 'Argentina', 'Lionel Scaloni', 'C'),
                (2, 'Francia', 'Didier Deschamps', 'D'),
                (3, 'Alemania', 'Hansi Flick', 'E'),
                (4, 'Arabia Saudita', 'Hervé Renard', 'C'),
                (5, 'Australia', 'Graham Arnold', 'D'),
                (6, 'Bélgica', 'Roberto Martinez', 'F'),
                (7, 'Brasil', 'Adenor Leonardo Bacchi', 'G'),
                (8, 'Camerún', 'Rigobert Song Bahanag', 'G'),
                (9, 'Canadá', 'John Herdman', 'F'),
                (10, 'Costa Rica', 'Luis Fernando Suárez Guzmán', 'E'),
                (11, 'Croacia', 'Zlatko Dalic', 'F'),
                (12, 'Dinamarca', 'Kasper Hjulmand', 'D'),
                (13, 'Ecuador', 'Gustavo Alfaro', 'A'),
                (14, 'España', 'Luis Enrique', 'E'),
                (15, 'Estados Unidos', 'Gregg Berhalter', 'B'),
                (16, 'Gales', 'Robert John Page', 'B'),
                (17, 'Ghana', 'Otto Addo', 'H'),
                (18, 'Inglaterra', 'Gareth Southgate', 'B'),
                (19, 'Irán', 'Carlos Queiroz', 'B'),
                (20, 'Japón', 'Hajime Moriyasu', 'E'),
                (21, 'República de Corea', 'Paulo Jorge Gomes Bento', 'H'),
                (22, 'Marruecos', 'Hoalid Regragui', 'F'),
                (23, 'Mexico', 'Gerardo Marino', 'C'),
                (24, 'Paises Bajos', 'Louis Van Gaal', 'A'),
                (25, 'Polonia', 'Czesław Michniewicz', 'C'),
                (26, 'Portugal', 'Fernando Santos', 'H'),
                (27, 'Qatar', 'Félix Sanchez Bas', 'A'),
                (28, 'Senegal', 'Aliou Cissé', 'A'),
                (29, 'Serbia', 'Dragan Stojković', 'G'),
                (30, 'Suiza', 'Murat Yakin', 'G'),
                (31, 'Túnez', 'Jalel Kadri', 'D'),
                (32, 'Uruguay', 'Diego Alonso', 'H')
    ;

    INSERT INTO Posicion (idPosicion, posicion)
        VALUES  (1, 'Arquero'),
                (2, 'Defensor'),
                (3, 'Mediocampista'),
                (4, 'Delantero')
    ;

    INSERT INTO Jugador (nombre, apellido, nacimiento, numCamiseta, idPais, idPosicion)
        VALUES  ('Emiliano','Martinez', '1992-09-02', 23, 1, 1),
                ('Cristian', 'Romero', '1998-04-27', 13, 1, 2),
                ('Nicolas', 'Otamendi', '1988-02-12', 19, 1, 2),
                ('Marcos', 'Acuña', '1991-10-28', 8, 1, 2),
                ('Nahuel', 'Molina', '1998-04-06',26 , 1, 2),
                ('Leandro','Paredes', '1994-06-29', 5, 1, 3),
                ('Rodrigo', 'De Paul', '1994-05-24', 7, 1, 3),
                ('Lionel', ' Messi', '1987-06-24', 10, 1, 4),
                ('Angel', 'Di Maria', '1988-02-14', 11, 1, 4),
                ('Lautaro', 'Martinez', '1997-08-22', 22, 1, 4)

    ;

    INSERT INTO TipoPartido
        VALUES (1, 'Grupos')

    ;

    INSERT INTO Estadio
        VALUES (1, 'Estadio de Lusail', 'Inagurado el 09-2022, tiene capacidad para 88.966 espectadores')

    ;
    
    INSERT INTO Partido (idPartido,  idTipoPartido, idLocal,    idVisitante,   idEstadio,  fecha   ,   golesLocales,   golesVisitantes)
        VALUES          (1,         1,              1,          4,             1,  '2022-11-22 07:00', 1,          2)
        
    ;


COMMIT;