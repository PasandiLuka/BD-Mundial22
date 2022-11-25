DROP DATABASE IF EXISTS Mundial22;
CREATE DATABASE Mundial22;
USE Mundial22;

CREATE TABLE Pais (
    idPais TINYINT,
    nombre VARCHAR(30) NOT NULL,
    nombreEntrenador VARCHAR(40) NOT NULL,
    grupo CHAR(1) NOT NULL,
    CONSTRAINT PK_Pais PRIMARY KEY (idPais),
    CONSTRAINT UQ_Pais_nombre UNIQUE (nombre)
);

CREATE TABLE Estadio(
    idEstadio TINYINT,
    nombre VARCHAR(40),
    infoEstadio VARCHAR(200),
    CONSTRAINT PK_Estadio PRIMARY KEY (idEstadio),
    CONSTRAINT UQ_Estadio_nombre (nombre)
);

CREATE TABLE Partido(
    idPartido TINYINT,
    idLocal TINYINT,
    idVisitante TINYINT,
    idEstadio TINYINT,
    fecha TIMESTAMP NOT NULL,
    golesLocales TINYINT UNSIGNED NULL DEFAULT NULL,
    golesVisitantes TINYINT UNSIGNED NULL DEFAULT NULL,
    CONSTRAINT FK_Partido_Estadio FOREIGN KEY (idEstadio)
        REFERENCES Estadio (idEstadio),
    CONSTRAINT FK_Partido_Pais_Local FOREIGN KEY (idLocal)
        REFERENCES pais (idPais),
    CONSTRAINT FK_Partido_Pais_Visitante FOREIGN KEY (idVisitante)
        REFERENCES pais (idPais)
);


CREATE TABLE Posicion(
    idPosicion TINYINT,
    posicion VARCHAR(20),
    CONSTRAINT PK_Posicion PRIMARY KEY (idPosicion)
);

CREATE TABLE Jugador(
    idJugador SMALLINT PRIMARY KEY,
    nombre VARCHAR(20),
    nacimiento DATE,
    numCamiseta TINYINT,
    idPais TINYINT,
    idPosicion INT,
    CONSTRAINT FK_Jugador_Pais FOREIGN KEY (idPais)
        REFERENCES pais (idPais),
    CONSTRAINT FK_Jugador_Posicion  FOREIGN KEY (idPosicion)
        REFERENCES posicion (idPosicion)
);

CREATE TABLE Jugador_Partido(
    idJugador SMALLINT PRIMARY KEY,
    idPartido TINYINT,
    CONSTRAINT FK_Jugador_Partido FOREIGN KEY (idPartido)
        REFERENCES partido (idPartido)
);

CREATE TABLE Gol (
    idJugador SMALLINT PRIMARY KEY,
    idPartido TINYINT,
    minuto TINYINT UNSIGNED,
    CONSTRAINT FK_Gol_Jugador FOREIGN KEY (idJugador)
        REFERENCES Jugador (idJugador),
    CONSTRAINT FK_Gol_Partido FOREIGN KEY (idPartido)
        REFERENCES Jugador_Partido (idPartido)
);