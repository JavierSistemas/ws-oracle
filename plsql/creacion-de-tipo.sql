/*
Los arrays asociativos no se pueden crear como tipo tabla
*/
--CREATE OR REPLACE TYPE DATO IS VARRAY(80) OF VARCHAR2(100);


DECLARE 
  DATOS HR.DATO;
BEGIN 
  DATOS:=DATO('uno','dos');
  DBMS_OUTPUT.PUT_LINE(DATOS(1)); 
END;  


