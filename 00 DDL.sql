DROP DATABASE IF EXISTS bd_Mundial22;
CREATE DATABASE bd_Mundial22;
USE bd_Mundial22;

CREATE TABLE Pais (
    idPais TINYINT AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    nombreEntrenador VARCHAR(30) NOT NULL,
    grupo CHAR(1) NOT NULL,
    CONSTRAINT PK_Pais PRIMARY KEY (idPais),
    CONSTRAINT UQ_Pais_nombre UNIQUE (nombre)
);

CREATE TABLE Estadio(
    idEstadio TINYINT AUTO_INCREMENT,
    nombre VARCHAR(40),
    infoEstadio VARCHAR(200),
    CONSTRAINT PK_Estadio PRIMARY KEY (idEstadio),
    CONSTRAINT UQ_Estadio_nombre UNIQUE (nombre)
);

CREATE TABLE TipoPartido(
    idTipoPartido TINYINT AUTO_INCREMENT,
    tipoPartido VARCHAR(10),
    PRIMARY KEY(idTipoPartido),
    CONSTRAINT UQ_TipoPartido UNIQUE (tipoPartido)
);

CREATE TABLE Partido(
    idPartido TINYINT AUTO_INCREMENT,
    idTipoPartido TINYINT,
    idLocal TINYINT NOT NULL,
    idVisitante TINYINT NOT NULL,
    idEstadio TINYINT NOT NULL,
    fecha TIMESTAMP NOT NULL,
    golesLocales TINYINT UNSIGNED NOT NULL DEFAULT 0,
    golesVisitantes TINYINT UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (idPartido),
    CONSTRAINT FK_Partido_TipoPartido FOREIGN KEY (idTipoPartido)
        REFERENCES TipoPartido (idTipoPartido),
    CONSTRAINT FK_Partido_Estadio FOREIGN KEY (idEstadio)
        REFERENCES Estadio (idEstadio),
    CONSTRAINT FK_Partido_Pais_Local FOREIGN KEY (idLocal)
        REFERENCES Pais (idPais),
    CONSTRAINT FK_Partido_Pais_Visitante FOREIGN KEY (idVisitante)
        REFERENCES Pais (idPais)
);


CREATE TABLE Posicion(
    idPosicion TINYINT AUTO_INCREMENT,
    posicion VARCHAR(20),
    CONSTRAINT PK_Posicion PRIMARY KEY (idPosicion)
);

CREATE TABLE Jugador(
    idJugador SMALLINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20),
    apellido VARCHAR(20),
    nacimiento DATE,
    numCamiseta TINYINT UNSIGNED,
    idPais TINYINT,
    idPosicion TINYINT,
    CONSTRAINT FK_Jugador_Pais FOREIGN KEY (idPais)
        REFERENCES Pais (idPais),
    CONSTRAINT FK_Jugador_Posicion  FOREIGN KEY (idPosicion)
        REFERENCES Posicion (idPosicion),
    CONSTRAINT UQ_Jugador_CamisetaPais UNIQUE (idPais, numCamiseta)
);

CREATE TABLE JugadorPartido(
    idJugador SMALLINT,
    idPartido TINYINT,
    CONSTRAINT PK_JugadorPartido PRIMARY KEY (idJugador, idPartido),
    CONSTRAINT FK_JugadorPartido_Partido FOREIGN KEY (idPartido)
        REFERENCES Partido (idPartido),
    CONSTRAINT FK_JugadorPartido_Jugador FOREIGN KEY (idJugador)
        REFERENCES Jugador (idJugador)
);

CREATE TABLE Gol (
    idJugador SMALLINT,
    idPartido TINYINT NOT NULL,
    minuto TINYINT UNSIGNED,
    CONSTRAINT FK_Gol_Jugador FOREIGN KEY (idJugador)
        REFERENCES Jugador (idJugador),
    CONSTRAINT FK_Gol_Partido FOREIGN KEY (idPartido)
        REFERENCES Partido (idPartido)
);