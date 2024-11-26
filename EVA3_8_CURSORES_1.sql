DELIMITER $$

CREATE FUNCTION generar_rfc(nombre VARCHAR(255), apellido_pat VARCHAR(255), apellido_mat VARCHAR(255), fecha_nac DATE)
RETURNS VARCHAR(13)
DETERMINISTIC
BEGIN
    DECLARE rfc VARCHAR(13);
    
    SET apellido_pat = UPPER(apellido_pat);
    SET apellido_mat = UPPER(COALESCE(apellido_mat, 'X'));
    SET nombre = UPPER(nombre);

    SET rfc = CONCAT(
        SUBSTRING(apellido_pat, 1, 2),
        SUBSTRING(apellido_mat, 1, 1),
        SUBSTRING(nombre, 1, 1),
        DATE_FORMAT(fecha_nac, '%Y%m%d')
    );

    RETURN rfc;
END$$

DELIMITER ;