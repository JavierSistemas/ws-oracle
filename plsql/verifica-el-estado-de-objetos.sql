/* 
Estado que tienen los objetos.
Oracle puede recuperar el objeto automáticamente. (si es posible)
*/
SELECT status, COUNT(*) FROM user_objects GROUP BY status;
-- ejemplo
-- 1. Se crea la tabla
create table prueba (c1 NUMBER, c2 NUMBER);
-- 2. Se verifica la creación
SELECT * FROM user_objects WHERE object_name LIKE  'PRUEBA%'
-- 3. Se crea la vista
create view prueba_v as select c1 from prueba;
-- 4. Se verifica la creación
SELECT * FROM user_objects WHERE object_name LIKE  'PRUEBA%'
-- 5. Modificamos la tabla
alter table prueba modify c2 VARCHAR2(100);    
-- 6. Se verifica la creación
SELECT * FROM user_objects WHERE object_name LIKE  'PRUEBA%' 
-- 7. Se modifica el campo dependiente
alter table prueba modify c1 VARCHAR2(100);
-- 8. Se verifica la creación
SELECT * FROM user_objects WHERE object_name LIKE  'PRUEBA%' 
-- 9. Verificamos la vista
SELECT * FROM prueba_v;

/*
 Compo compilar un objeto
*/

alter rocedure nom_objeto compile;
    

