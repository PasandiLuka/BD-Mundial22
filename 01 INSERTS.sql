USE bd_Mundial22 ;
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
        VALUES  -- Argentina
                ('Franco', 'Armani', '1986-10-16', 1, 1, 1),
                ('Juan', 'Foyth', '1998-01-12', 2, 1, 2),
                ('Nicolás', 'Tagliafico', '1992-08-31', 3, 1, 2),
                ('Gonzalo', 'Montiel', '1997-01-01', 4, 1, 2),
                ('Leandro','Paredes', '1994-06-29', 5, 1, 3),
                ('Germán', 'Pezzella', '1991-06-27', 6, 1, 2),
                ('Rodrigo', 'De Paul', '1994-05-24', 7, 1, 3),
                ('Marcos', 'Acuña', '1991-10-28', 8, 1, 3),
                ('Julian', 'Alvarez', '2000-01-31', 9, 1, 4),
                ('Lionel', ' Messi', '1987-06-24', 10, 1, 4),
                ('Angel', 'Di Maria', '1988-02-14', 11, 1, 4),
                ('Geronimo', 'Rulli', '1992-05-20', 12, 1, 1),
                ('Cristian', 'Romero', '1998-04-27', 13, 1, 2),
                ('Exequiel', 'Palacios', '1998-10-05', 14, 1, 3),
                ('Angel', 'Correa', '1995-03-09', 15, 1, 4),
                ('Thiago', 'Almada', '2001-04-26', 16, 1, 3),
                ('Alejandro', 'Gomez', '1988-02-15', 17, 1, 3),
                ('Guido', 'Rodriguez', '1994-04-12', 18, 1, 3),
                ('Nicolas', 'Otamendi', '1988-02-12', 19, 1, 2),
                ('Alexis', 'Mac Allister', '1998-12-24', 20, 1, 3),
                ('Paulo', 'Dybala', '1993-11-15', 21, 1, 4),
                ('Lautaro', 'Martínez', '1997-08-22', 22, 1, 4),
                ('Emiliano', 'Martínez', '1992-09-02', 23, 1, 1),
                ('Enzo', 'Fernandez', '2001-01-17', 24, 1, 3),
                ('Lisandro', 'Martínez', '1998-01-18', 25, 1, 2),
                ('Nahuel', 'Molina', '1998-04-06', 26 , 1, 2),
                -- Francia
                ('Hugo', 'Lloris', '1986-12-26', 1, 2, 1),
                ('Steve', 'Mandada', '1985-03-27', 16, 2, 1),
                ('Alphonse ', 'Areola', '1993-02-26', 23, 2, 1),
                ('Benjamin', 'Pavard', '1996-03-27', 2, 2, 2),
                ('Axel', 'Disasi', '1998-03-10', 3, 2, 2),
                ('Raphael', 'Varane', '1993-04-24', 4, 2, 2),
                ('Dayot', 'Upamecano', '1998-10-26', 18, 2, 2),
                ('Ibrahima', 'Konaté', '1996-03-27', 24, 2, 2),
                ('William', 'Saliba', '2001-03-23', 17, 2, 2),
                ('Jules', 'Koundé', '1998-11-11', 5, 2, 2),
                ('Lucas', 'Hernandez', '1996-02-13', 21, 2, 2),
                ('Theo', 'Hernandez', '1997-10-5', 22, 2, 2),
                ('Aurelien', 'Tchouameni', '2000-01-26', 8, 2, 3),
                ('Matteo', 'Guendouzi', '1999-04-13', 6, 2, 3),
                ('Jordan', 'Veretout', '1993-02-28', 15, 2, 3),
                ('Youssouf', 'Fofana', '1999-01-09', 13, 2, 3),
                ('Adrien', 'Rabiot', '1995-04-02', 14, 2, 3),
                ('Eduardo', 'Camavinga', '2002-11-9', 25, 2, 3),
                ('Antoine', 'Griezmann', '1991-03-20', 7, 2, 4),
                ('Oliver', 'Giroud', '1986-09-29', 9, 2, 4),
                ('Kylian', 'Mbappe', '1998-12-19', 10, 2, 4),
                ('Ousmane', 'Dembele', '1997-05-14', 11, 2, 4),
                ('Randai', 'Kolo Muani', '1996-06-12', 12, 2, 4),
                ('Kingsley', 'Coman', '1998-12-04', 20, 2, 4),
                ('Marcus', 'Thuram', '1997-08-05', 26, 2, 4),
                -- Portugal
                ('Rui', 'Patricio', '1988-02-14', 1, 26, 1),
                ('Diogo', 'Costa', '1999-09-19',22 ,26, 1),
                ('Jose', 'Sa', '1993-01-16', 12, 26, 1),
                ('Képler Laverán', 'Lima Ferreira', '1983-02-26', 3, 26, 2),
                ('Ruben', 'Dias', '1997-05-14', 4, 26, 2),
                ('Joao', 'Cancelo', '1994-05-27', 20, 26, 2),
                ('Nuno', 'Mendes', '2002-06-19', 19, 26, 2),
                ('Matheus', 'Nunes', '1998-08-26', 23, 26, 2),
                ('Danilo', 'Pereira', '1991-09-08', 13, 26, 2),
                ('Diogo', 'Dalot', '1999-04-17', 2, 26, 2),
                ('Raphael', 'Guerreiro', '1993-12-21', 5, 26, 2),
                ('Antonio', 'Silva', '2003-10-29', 24, 26, 2),
                ('Joao', 'Mario', '2002-06-19', 17, 26, 3),
                ('Otavio', 'da Silva Monteiro', '1995-02-08', 35, 26, 3),
                ('William', 'Carvalho', '1992-04-06', 14, 26, 3),
                ('Ruben', 'Neves', '1997-03-13', 18, 26, 3),
                ('Vítor Machado', 'Ferreira', '2000-02-13', 11, 26, 3),
                ('Bruno', 'Fernandes', '1994-09-08', 8, 26, 3),
                ('Joao', 'Felix', '1999-11-10', 25, 26, 4),
                ('Cristiano', 'Ronaldo', '1985-02-05', 7, 26, 4),
                ('Bernardo', 'Silva', '1994-08-09', 10, 26, 4),
                ('Andre', 'Silva', '1995-11-06', 9, 26, 4),
                ('Ricardo', 'Horta', '1994-09-14', 21, 26, 4),
                ('Rafael', 'Leao', '1999-06-09', 15, 26, 4),
                ('Goncalo', 'Ramos', '2001-06-10', 26, 26, 4),
                -- Alemania
                ('Marc-Andre', 'Ter stegen', '1992-04-30', 22, 3, 1),
                ('Kevin','Trapp','1990-07-08',12,3,1),
                ('Manuel', 'Neuer', '1986-03-27', 1, 3, 1),
                ('Antonio', 'Ruediger', '1993-03-03', 2, 3, 2),
                ('David', 'Raum', '1998-04-22', 3, 3, 2),
                ('Matthias', 'Ginter', '1994-01-19', 4, 3, 2),
                ('Thilo', 'Kehrer', '1996-09-21', 5, 3, 2),
                ('Niklas', 'Suele', '1995-09-03', 15, 3, 2),
                ('Lukas', 'Klostermann', '1996-06-03', 16, 3, 2),
                ('Christian', 'Guenter', '1993-02-28', 20, 3, 2),
                ('Nico', 'Schlotterbeck', '1999-12-01', 23, 3, 2),
                ('Armel', 'Bella-Kotchap', '2001-12-11', 25, 3, 2),
                ('Joshua', 'Kimmich', '1995-02-08', 6, 3, 3),
                ('Leon', 'Goretzka', '1995-02-06', 8, 3, 3),
                ('Mario', 'Goetze', '1992-06-03', 11, 3, 3),
                ('Thomas', 'Mueller', '1983-09-13', 13, 3, 3),
                ('Jamal', 'Musiala', '2003-02-26', 14, 3, 3),
                ('Julian', 'Brandt', '1996-05-02', 17, 3, 3),
                ('Jonas', 'Hofmann', '1992-07-12', 18, 3, 3),
                ('Leroy', 'Sane', '1996-01-11', 19, 3, 3),
                ('Ilkay', 'Guendogan', '1990-10-24', 21, 3, 3),
                ('Kai', 'Havertz', '1999-06-11', 7, 3, 4),
                ('Niclas', 'Fuellkrug', '1993-02-09', 9, 3, 4),
                ('Serge', 'Gnabry', '1995-07-14', 10, 3, 4),
                ('Karim', 'Adeyemi', '2002-01-18', 24, 3, 4),
                ('Youssoufa', 'Moukoko', '2004-11-20', 26, 3, 4),
                -- Uruguay
                ('Fernando', 'Muslera', '1986-06-16', 1, 32, 1),
                ('Jose', 'Gimenez', '1995-01-20', 2, 32, 2),
                ('Diego', 'Godin', '1986-02-16', 3, 32, 2),
                ('Ronald','Araujo', '1999-03-07', 4, 32, 2),
                ('Matias', 'Vecino', '1991-08-24', 5, 32, 3),
                ('Rodrigo', 'Bentacur', '1997-06-25', 6, 32, 3),
                ('Nicolas', 'De La Cruz', '1997-06-01', 7, 32, 3),
                ('Facundo', 'Pellistri', '2001-12-20', 8, 32, 4),
                ('Luis', 'Suarez', '1987-01-24', 9, 32, 4),
                ('Giorgian', 'De Arrascaeta', '1994-06-01', 10, 32, 3),
                ('Darwin', 'Nunez', '1999-06-24', 11, 32, 4),
                ('Sebastian', 'Sosa', '1986-08-19', 12, 32, 1),
                ('Guillermo', 'Varela', '1993-03-24', 13, 32, 2),
                ('Lucas', 'Torreira', '1996-02-11', 14, 32, 3),
                ('Federico', 'Valverde', '1998-07-22', 15, 32, 3),
                ('Mathias', 'Olivera', '1997-10-31', 16, 32, 2),
                ('Matias', 'Vina', '1997-11-9', 17, 32, 2),
                ('Maximiliano', 'Gomez', '1996-08-14', 18, 32, 4),
                ('Sebastian', 'Coates', '1990-10-07', 19, 32, 2),
                ('Facundo', 'Torres', '2000-04-13', 20, 32, 4),
                ('Edinson', 'Cavani', '1987-02-14', 21, 32, 4),
                ('Martin', 'Caceres', '1987-04-07', 22, 32, 2),
                ('Sergio', 'Rochet', '1993-03-23', 23, 32, 1),
                ('Agustin', 'Canobbio', '1998-10-01', 24, 32, 3),
                ('Manuel', 'Ugarte', '2001-04-11', 25, 32, 3),
                ('José Luis', 'Rodríguez Bebanz', '1999-03-14', 26, 32, 2),
                -- Arabia Saudita
                ('Mohammed', 'Alyami', '1997-08-14', 1, 4, 1),
                ('Mohammed', 'Alowais', '1991-10-10', 21, 4, 1),
                ('Nawaf', 'Alaqidi', '2000-05-10', 22, 4, 1),
                ('Sultan', 'Alghannam', '1994-05-06', 2, 4, 2),
                ('Abdullah', 'Madu', '1993-07-15', 3, 4, 2),
                ('Abdulelah', 'Alamri', '1997-01-15', 4, 4, 2),
                ('Ali', 'Albulayhi', '1989-11-21', 5, 4, 2),
                ('Mohammed', 'Alburayk', '1992-09-15', 6, 4, 2),
                ('Saud', 'Abdulhamid', '1999-07-18', 12, 4, 2),
                ('Yasser', 'Alshahrani', '1992-05-25', 13, 4, 2), 
                ('Hassan', 'Altambakti', '1999-02-09', 17, 4, 2),
                ('Salman', 'Alfaraj', '1989-08-01', 7, 4, 3),
                ('Abdulelah', 'Almalki','1994-10-11', 8, 4, 3),
                ('Abdullah', 'Otayf', '1992-08-03', 14, 4, 3),
                ('Ali', 'Alhassan', '1997-03-04', 15, 4, 3),
                ('Sami', 'Alnaji', '1997-02-07', 16, 4, 3),
                ('Nawaf', 'Al Abid', '1990-01-26,', 18, 4, 3),
                ('Mohamed', 'Kanno', '1994-09-22', 23, 4, 3),
                ('Nasser', 'Aldawsari', '1998-12-19', 24, 4, 3),
                ('Riyadh', 'Sharahili', '1993-04-29', 26, 4, 3),
                ('Feras', 'Albrikan', '2000-05-14', 9, 4, 4),
                ('Salem', 'Aldawsari', '1991-08-19', 10, 4, 4),
                ('Saleh', 'Alshehri', '1993-11-01', 11, 4, 4),
                ('Hatan', 'Bahbri', '1992-07-16', 19, 4, 4),
                ('Abdulrahman', 'Alobud', '1995-06-01', 20, 4, 4),
                ('Haitham', 'Asiri', '2001-03-25', 25, 4, 4)




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

    INSERT INTO JugadorPartido (idJugador, idPartido, idReemplazo, ingreso, ingresoAdicionado, egreso, egresoAdicionado)
        VALUES              -- Partido Argentina - Arabia Saudita - Grupo C
                        (idJugador(1, 23)   ,  1 ,  NULL        ,   NULL    ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1, 3)    ,  1 ,idJugador(1, 8),   NULL   ,   NULL        ,   71    ,   NULL),
                        (idJugador(1, 13)   ,  1 ,idJugador(1, 25),  NULL   ,   NULL        ,   59    ,   NULL),
                        (idJugador(1, 19)   ,  1 ,  NULL        ,   NULL    ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1, 26)   ,  1 ,   NULL       ,   NULL    ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1, 5)    ,  1,idJugador(1, 24),  NULL    ,   NULL        ,   59    ,   NULL),
                        (idJugador(1, 7)    ,  1    ,   NULL    ,   NULL    ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1, 11)   ,  1    ,   NULL    ,   NULL    ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1, 17)   ,  1,idJugador(1, 9),   NULL    ,   NULL        ,   59    ,   NULL),
                        (idJugador(1, 10)   ,  1    ,   NULL    ,   NULL    ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1, 22)   ,  1    ,   NULL    ,   NULL    ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1, 8)    ,  1,idJugador(1, 3),   71      ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1, 9)    ,  1,idJugador(1,17),   59      ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1,24)    ,  1,idJugador(1, 5),   59      ,   NULL        ,   NULL    ,   NULL),
                        (idJugador(1,25)    ,  1,idJugador(1,13),   59      ,   NULL        ,   NULL    ,   NULL)
    
    ;


COMMIT;