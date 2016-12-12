DELETE FROM pregunta;
DELETE FROM rol;
DELETE FROM usuario;


INSERT INTO pregunta
    (id, contenido)
VALUES
       (1, '¿Qué expectativas tenés para el año que viene?'),
       (2, '¿En qué cosa nueva querés invertir tu tiempo?'),
       (3, '¿Qué le contas a otros de tu lugar de trabajo?');

INSERT INTO usuario
    (id,    email,                      password)
VALUES
    (1,     'matzam@gmail.com',         '$2a$10$iodzSOMStstDQmgofPOXGOywxiLcDHtztfNmZ0DS9h5tpb.p3vOiG');

INSERT INTO rol
    (id_usuario,    rol)
VALUES
    (1,             'ROLE_USER');