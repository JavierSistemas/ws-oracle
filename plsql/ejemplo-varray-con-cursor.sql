/*
Usando cursor 
*/
DECLARE 
       TYPE empleado IS VARRAY(10) OF employees%ROWTYPE;
       CURSOR c1 IS SELECT * FROM employees FETCH FIRST 10 ROWS ONLY;
       contador NUMBER:=1;
       empleados empleado:=empleado();            

BEGIN 
  --
  FOR X IN c1 LOOP 
    empleados.EXTEND(1);
    empleados(contador):=X;
    contador:=contador+1;
     
  END LOOP; 
  
  FOR I IN empleados.FIRST..empleados.LAST LOOP 
    DBMS_OUTPUT.PUT_LINE(empleados(I).first_name || '  ' ||empleados(I).salary); 
  END LOOP;     
         
   
  END;  
