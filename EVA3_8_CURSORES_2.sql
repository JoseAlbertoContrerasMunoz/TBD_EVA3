delimiter $$
CREATE PROCEDURE actualizar_rfc()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE _id INT;
    DECLARE _nombre VARCHAR(255);
    DECLARE _apellido_pat VARCHAR(255);
    DECLARE _apellido_mat VARCHAR(255);
    DECLARE cur CURSOR FOR SELECT id, nombre, apellido_pat, apellido_mat FROM personas WHERE clave_rfc IS NULL;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO _id, _nombre, _apellido_pat, _apellido_mat;
        IF done THEN
            LEAVE read_loop;
        END IF;

        UPDATE personas SET clave_rfc = generar_rfc(_nombre, _apellido_pat, _apellido_mat) WHERE id = _id;
    END LOOP;

    CLOSE cur;
END $$

delimiter ;