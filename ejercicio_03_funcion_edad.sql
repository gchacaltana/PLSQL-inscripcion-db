CREATE OR REPLACE FUNCTION calcular_edad(p_id_infante NUMBER)
RETURN NUMBER
AS
    d_fnac DATE;
    n_edad NUMBER;
BEGIN
 
    SELECT fecha_nac INTO d_fnac
    FROM infante WHERE id_infante = p_id_infante;
    SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, d_fnac)/12) INTO n_edad FROM dual;
    RETURN n_edad;
 
END calcular_edad;

-- Probando función 
SELECT * FROM infante WHERE id_infante = 1;
SELECT calcular_edad(1) FROM dual;