/*
Recupera las diez primeras filas.
*/
DECLARE 
 TYPE empleado IS VARRAY(10) OF employees%ROWTYPE;
 empleados empleado := empleado();
BEGIN 
  --
  SELECT * BULK COLLECT INTO empleados 
  FROM employees FETCH FIRST 10 ROWS ONLY;
  -- 
  FOR I IN empleados.FIRST()..empleados.LAST() LOOP 
    DBMS_OUTPUT.PUT_LINE(empleados(I).first_name||' - '|| empleados(I).salary);                    
    END LOOP;   
  
      
  END;  
