-- ---------------------------------------------------------------------------
--  Dropear todas las tablas del esquema. Mas info: http://stackoverflow.com/questions/12403662/drop-all-tables
-- ---------------------------------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;
SET SESSION group_concat_max_len = 1000000; 
SET @tables = NULL;
SELECT GROUP_CONCAT(table_schema, '.', table_name) INTO @tables
  FROM information_schema.tables
  WHERE table_schema = 'preguntio';

SET @tables = CONCAT('DROP TABLE ', @tables);
PREPARE stmt FROM @tables;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
SET FOREIGN_KEY_CHECKS = 1;

-- DROP TABLE PREGUNTA;
-- DROP TABLE CATEGORIA;
-- DROP TABLE COLECCION;


CREATE TABLE COLECCION (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    imagen VARCHAR(255) NOT NULL,
    descripcion_corta VARCHAR(255) NOT NULL,
    descripcion VARCHAR(1000) NOT NULL
);

CREATE TABLE CATEGORIA (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    id_coleccion BIGINT NOT NULL,
    FOREIGN KEY (id_coleccion) REFERENCES coleccion(id)
);

CREATE TABLE pregunta (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    contenido VARCHAR(255) NOT NULL,
    id_categoria BIGINT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE usuario (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    enabled BOOLEAN DEFAULT TRUE
);

CREATE TABLE rol (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_usuario BIGINT NOT NULL,
    rol VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    UNIQUE KEY unique_id_usuario_rol (id_usuario, rol)
);