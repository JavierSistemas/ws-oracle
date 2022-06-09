/*
Dependencias:
*/
SELECT * FROM user_dependencies;
SELECT * FROM all_dependencies;
SELECT * FROM Dba_Dependencies;
--ejemplo sin dependencias
SELECT * FROM user_dependencies where name ='employees';
--ejemplo con dependencias
SELECT * FROM user_dependencies where name = 'EMP_DETAILS_vIEW';
SELECT * FROM user_dependencies WHERE referenced_name = 'employees';
