--------------------------------------------------------
-- Archivo creado  - jueves-julio-02-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FN_RESERVAS_POR_VUELO
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BAD115"."FN_RESERVAS_POR_VUELO" 
(P_ID_VUELO IN NUMBER)
RETURN INT
IS
V_RESERVAS INT;
BEGIN
  SELECT NVL (SUM(CANTIDAD),0)
    INTO V_RESERVAS
    FROM TB_RESERVA
   WHERE ID_VUELO = P_ID_VUELO
     AND ID_ESTATUS_RESERVA = 1;
  RETURN V_RESERVAS;
END;

/
