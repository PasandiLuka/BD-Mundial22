USE bd_Mundial22;

DELIMITER $$
DROP FUNCTION IF EXISTS idJugador $$
CREATE FUNCTION idJugador (pais TINYINT, camiseta TINYINT UNSIGNED)
    RETURNS SMALLINT
    READS SQL DATA
BEGIN
    DECLARE id SMALLINT;

    SELECT  idJugador INTO id
    FROM    Jugador
    WHERE   numCamiseta = camiseta
    AND     idPais = pais
    LIMIT   1;

    RETURN id;
END $$
