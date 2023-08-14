USE eventos;

-- 1º Usuario

DROP USER IF EXISTS 'MariaPelaez'@'localhost';

CREATE USER 'MariaPelaez'@'localhost' IDENTIFIED BY '123';

GRANT SELECT ON evento TO 'MariaPelaez'@'localhost';

FLUSH PRIVILEGES;

/*
Funcion: El usuario MariaPelaez tendra solo los privilegios de realizar select
sobre la base de datos eventos.
*/

-- 2º Usuario

DROP USER IF EXISTS 'NievesOsuna'@'localhost';

CREATE USER 'NievesOsuna'@'localhost' IDENTIFIED BY '0502';

GRANT SELECT, INSERT, UPDATE ON evento TO 'NievesOsuna'@'localhost';

FLUSH PRIVILEGES;

/*
Funcion: El usuario NievesOsuna tendra solo los privilegios de seleccionar tablas, modificarlas e
insertarles datos.
*/