USE bd_Mundial22;
-- La informaciòn se obtuvo de: https://www.fifa.com/fifaplus/es/tournaments/mens/worldcup/qatar2022

START TRANSACTION ;
    SET time_zone ='-03:00';
    INSERT INTO Pais (idPais, nombre, nombreEntrenador, grupo)
        VALUES  (1, 'Argentina', 'Lionel Scaloni', 'C'),
                (2, 'Francia', 'Didier Deschamps', 'D'),
                (3, 'Ecuador', 'Gustavo Alfaro', 'A'),
                (4, 'Inglaterra', 'Gareth Southgate', 'B'),
                (5, 'Estados Unidos', 'Gregg Berhalter', 'B'),
                (6, 'Mexico', 'Gerardo Marino', 'C'),
                (7, 'Qatar', 'Félix Sanchez Bas', 'A'),
                (8, 'Australia', 'Graham Arnold', 'D'),
                (9, 'España', 'Luis Enrique', 'E'),
                (10, 'Alemania', 'Hansi Flick', 'E'),
                (11, 'Belgica', 'Roberto Martinez', 'F'),
                (12, 'Croacia', 'Zlatko Dalic', 'F'),
                (13, 'Brasil', 'Tite', 'G'),
                (14, 'Suiza', 'Murat Yakin', 'G'),
                (15, 'Portugal', 'Fernando Santos', 'H'),
                (16, 'Uruguay', 'Diego Alonso', 'H'),
                (17, 'Arabia Saudita', 'Hervé Renard', 'C'),
                (18, 'Japon', 'Hajime Moriyasu', 'E');

    INSERT INTO Posicion (idPosicion, posicion)
        VALUES  (1, 'Arquero'),
                (2, 'Defensor'),
                (3, 'Mediocampista'),
                (4, 'Delantero');

    INSERT INTO Jugador (nombre, apellido, nacimiento, numCamiseta, idPais, idPosicion)
        VALUES  ('Emiliano','Martinez', '1992-09-02', 23, 1, 1),
                ('Cristian', 'Romero', '1998-04-27', 13, 1, 2),
                ('Nicolas', 'Otamendi', '1988-02-12', 19, 1, 2),
                ('Marcos', |'Acuña', '1991-10-28', 8, 1, 2),
                ('Nahuel', 'Molina', '1998-04-06',26 , 1, 2),
                ('Leandro','Paredes', '1994-06-29', 5, 1, 3),
                ('Rodrigo', 'De Paul', '1994-05-24', 7, 1, 3),
                ('Lionel', ' Messi', '1987-06-24', 10, 1, 4),
                ('Angel', 'Di Maria', '1988-02-14', 11, 1, 4),
                ('Lautaro', 'Martinez', '1997-08-22', 22, 1, 4);

    INSERT INTO TipoPartido
        VALUES (1, 'Grupos');

    INSERT INTO Estadio
        VALUES (1, 'Estadio de Lusail', 'Inagurado el 09-2022, tiene capacidad para 88.966 espectadores');
    
    INSERT INTO Partido (idPartido,  idTipoPartido, idLocal,    idVisitante,   idEstadio,  fecha   ,   golesLocales,   golesVisitantes)
        VALUES          (1,         1,              1,          17,             1,  '2022-11-22 07:00', 1,          2);


COMMIT;