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

-- Insertando registros
EXECUTE insertar_infante('Samantha Ugarte',  TO_DATE('06/07/2012','dd/MM/yyyy'));
EXECUTE insertar_infante('Vanessa Lovera',  TO_DATE('04/04/2016','dd/MM/yyyy'));
EXECUTE insertar_infante('Ana Lucía Peralta'  ,  TO_DATE('06/05/2014','dd/MM/yyyy'));
EXECUTE insertar_infante('Maykol Cervantes' ,  TO_DATE('08/05/2015','dd/MM/yyyy'));
EXECUTE insertar_infante('Pedro Fernández'  ,  TO_DATE('23/03/2013','dd/MM/yyyy'));
EXECUTE insertar_infante('Gonzalo Chacaltana',  TO_DATE('11/02/2014','dd/MM/yyyy'));
EXECUTE insertar_infante('Luis Alberto Praetz', TO_DATE('01/12/2012','dd/MM/yyyy'));