CREATE OR REPLACE PROCEDURE insertar_profesor(p_nombre VARCHAR2)
AS
    last_id NUMBER;
    new_id  NUMBER;
    cuantos NUMBER;
BEGIN
 
    SELECT COUNT(id_profesor) INTO cuantos FROM profesor;
    SELECT MAX(id_profesor) INTO last_id FROM profesor;
 
    IF cuantos = 0 THEN
        new_id := 1;
    ELSE
        new_id := last_id + 1;
    END IF;
 
    INSERT INTO profesor(id_profesor, nombre)
    VALUES(new_id, p_nombre);
   
END;