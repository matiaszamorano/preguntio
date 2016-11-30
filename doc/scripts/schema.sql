-- ---------------------------------------------------------------------------
--  Dropear todas las tablas del esquema. Mas info: http://stackoverflow.com/questions/12403662/drop-all-tables
-- ---------------------------------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;
SET SESSION group_concat_max_len = 1000000; -- max length for group_concat result
SET @tables = NULL;
SELECT GROUP_CONCAT(table_schema, '.', table_name) INTO @tables
  FROM information_schema.tables
  WHERE table_schema = 'preguntio'; -- specify DB name here.

SET @tables = CONCAT('DROP TABLE ', @tables);
PREPARE stmt FROM @tables;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE pregunta (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    contenido VARCHAR(255) NOT NULL
);