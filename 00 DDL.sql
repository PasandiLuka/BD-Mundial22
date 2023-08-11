DROP DATABASE IF EXISTS bd_Mundial22 ;
CREATE DATABASE bd_Mundial22 ;
USE bd_Mundial22 ;

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
    tipoPartido CHAR(13),
    PRIMARY KEY(idTipoPartido),
    CONSTRAINT UQ_TipoPartido UNIQUE (tipoPartido)
);

CREATE TABLE Partido(
    idPartido TINYINT AUTO_INCREMENT,
    idTipoPartido TINYINT NOT NULL,
    idLocal TINYINT NOT NULL,
    idVisitante TINYINT NOT NULL,
    idEstadio TINYINT NOT NULL,
    fecha TIMESTAMP NOT NULL,
    golesLocales TINYINT UNSIGNED NOT NULL DEFAULT 0,
    golesVisitantes TINYINT UNSIGNED NOT NULL DEFAULT 0,
    duracion TINYINT UNSIGNED DEFAULT 90,
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
    posicion CHAR(13) NOT NULL,
    CONSTRAINT PK_Posicion PRIMARY KEY (idPosicion),
    CONSTRAINT UQ_Posicion_posicion UNIQUE (posicion)
);

CREATE TABLE Jugador(
    idJugador SMALLINT PRIMARY KEY AUTO_INCREMENT,
    idPais TINYINT NOT NULL,
    idPosicion TINYINT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellido VARCHAR(20) NOT NULL,
    nacimiento DATE NOT NULL,
    numCamiseta TINYINT UNSIGNED NOT NULL,
    CONSTRAINT FK_Jugador_Pais FOREIGN KEY (idPais)
        REFERENCES Pais (idPais),
    CONSTRAINT FK_Jugador_Posicion  FOREIGN KEY (idPosicion)
        REFERENCES Posicion (idPosicion),
    CONSTRAINT UQ_Jugador_CamisetaPais UNIQUE (idPais, numCamiseta)
);

CREATE TABLE JugadorPartido(
    idJugador SMALLINT,
    idPartido TINYINT,
    idReemplazo SMALLINT NULL,
    ingreso TINYINT UNSIGNED NULL,
    ingresoAdicionado TINYINT UNSIGNED NULL,
    egreso TINYINT UNSIGNED NULL,
    egresoAdicionado TINYINT UNSIGNED NULL,
    CONSTRAINT PK_JugadorPartido PRIMARY KEY (idJugador, idPartido),
    CONSTRAINT FK_JugadorPartido_Partido FOREIGN KEY (idPartido)
        REFERENCES Partido (idPartido),
    CONSTRAINT FK_JugadorPartido_Jugador FOREIGN KEY (idJugador)
        REFERENCES Jugador (idJugador),
    CONSTRAINT FK_JugadorPartido_Reemplazo FOREIGN KEY (idReemplazo)
        REFERENCES Jugador (idJugador),
    CONSTRAINT CHK_JugadorPartido CHECK (
        -- Es Jugador sin cambios
        ((idReemplazo IS NULL) AND (ingreso IS NULL) AND (ingresoAdicionado IS NULL)
        AND (egreso IS NULL) AND (egresoAdicionado is NULL))
        -- Evalúo si tiene un cambio
        OR (((idReemplazo IS NOT NULL) AND (idReemplazo != idJugador))
            -- Es jugador reemplazado
            AND ((egreso IS NOT NULL)
            -- Es jugador reemplazo
                OR  (ingreso IS NOT NULL)
            )
        )
    )
);

CREATE TABLE Gol (
    idJugador SMALLINT NOT NULL,
    idPartido TINYINT NOT NULL,
    minuto TINYINT UNSIGNED,
    enContra BOOL NOT NULL DEFAULT FALSE,
    CONSTRAINT FK_Gol_Jugador FOREIGN KEY (idJugador)
        REFERENCES Jugador (idJugador),
    CONSTRAINT FK_Gol_Partido FOREIGN KEY (idPartido)
        REFERENCES Partido (idPartido)
);

CREATE TABLE DefinicionPenal (
    idPartido TINYINT,
    idJugador SMALLINT,
    turno TINYINT UNSIGNED,
    acierto BOOL NOT NULL,
    CONSTRAINT PK_DefinicionPenal PRIMARY KEY (idPartido, idJugador, turno),
    CONSTRAINT FK_DefinicionPenal_Jugador FOREIGN KEY (idJugador)
        REFERENCES Jugador (idJugador),
    CONSTRAINT FK_DefinicionPenal_Partido FOREIGN KEY (idPartido)
        REFERENCES Partido (idPartido)
);