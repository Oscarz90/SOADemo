------------------------------------
-- TABLA PARA TARJETAS DE CREDITO --
------------------------------------

CREATE TABLE "SOADEMO"."TARJETACREDITOINFO" (  
  "TITULARNOMBRE" VARCHAR2(50 BYTE), 
  "TITULARAPELLIDO" VARCHAR2(50 BYTE), 
  "NUMERO" VARCHAR2(20 BYTE), 
  "ESTATUS" VARCHAR2(20 BYTE) DEFAULT 'INVALIDA'
)
