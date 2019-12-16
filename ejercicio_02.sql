CREATE OR REPLACE PROCEDURE insertar_infante(p_nombre VARCHAR2, p_fechanac DATE)
AS
    last_id NUMBER;
    new_id  NUMBER;
    cuantos NUMBER;
BEGIN
 
    SELECT COUNT(id_infante) INTO cuantos FROM infante;
    SELECT MAX(id_infante) INTO last_id FROM infante;
 
    IF cuantos = 0 THEN
        new_id := 1;
    ELSE
        new_id := last_id + 1;
    END IF;
 
    INSERT INTO infante(id_infante, nombre, fecha_nac)
    VALUES(new_id, p_nombre, p_fechanac);
   
END insertar_infante;