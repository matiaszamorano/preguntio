DELETE FROM pregunta;
DELETE FROM categoria;
DELETE FROM coleccion;
DELETE FROM rol;
DELETE FROM usuario;

INSERT INTO coleccion
    (id,titulo, imagen, descripcion, descripcion_corta)
VALUES
    (1,"Preguntas Poderosas", "http://agilepartnership.com/wp-content/uploads/2011/08/iStock_000003286671Small.jpg", "Las preguntas poderosas son preguntas provocativas que ponen fin a la evasión y a la confusión, preguntando. 
                                                Con estas el coach invita al coachee a la claridad, la acción y el descubrimiento en un nuevo nivel. 
                                                Son generalmente preguntas abiertas que crean mayor posibilidad de ampliar el aprendizaje y la perspectiva.","Las preguntas poderosas son preguntas provocativas que ponen fin a la evasión y a la confusión."),
    (2,"Preguntas PNT", "http://www.somospnt.com/images/background/foto_lego_1.jpg", "Durante semanas generamos estas preguntas para reflexionar en el equipo.", "Durante semanas generamos estas preguntas para reflexionar en el equipo.");

INSERT INTO categoria
    (id, titulo, id_coleccion)
VALUES
    (2, "Noviembre", 2),
    (3, "Anticipación",1),
    (4, "Evaluación",1),
    (5, "Clarificación",1),
    (6, "Elaboración",1),
    (7, "Evaluación",1),
    (8, "Ejemplo",1),
    (9, "Exploración",1),
    (10,"Por ejemplo",1),
    (11,"Diversión como perspectiva",1),
    (12,"Historia",1),
    (13,"Implementación",1),
    (14,"Integración",1),
    (15,"Aprendizaje",1),
    (16,"Opciones",1),
    (17,"Resultados",1),
    (18,"Perspectiva",1),
    (19,"Planificación",1),
    (20,"Predicciones",1),
    (21,"Recursos",1),
    (22,"Inicio de la sesión",1),
    (23,"Resumen",1),
    (24,"Acción",1);

INSERT INTO pregunta
    (contenido, id_categoria)
VALUES
('¿Qué expectativas tenés para el año que viene?',2),
('¿En qué cosa nueva querés invertir tu tiempo?',2),
('¿Qué le contas a otros de tu lugar de trabajo?',2),
('¿Qué buscás en PNT?',2),
('¿Que querés aprender hoy?',2),
('¿En qué fallaste hoy?',2),
('¿Para qué usamos una arquitectura de 3 capas?',2),
('¿Por qué estás en tu equipo?',2),
('¿Cómo sería tu vida si no fueses desarrollador?',2),
('¿Qué pregunta te incomoda?',2),
('¿Qué fue lo último que leíste?',2),
('¿Para qué estás escuchando?',2),
('¿Qué te enorgullece de esta semana?',2),
('¿Cuál fue la mejor tarjeta que te dieron?',2),
('¿Qué está pasando en PNT?',2),
('¿Qué estás posponiendo?',2),
('¿Qué harías si no tuvieses miedo?',2),
('¿Qué te gustaría poder contarle con orgullo a tus nietos?',2),
('¿Qué sentís cuando escuchas una burla?',2),
('¿Cuál fue la mejor decisión que tomaste esta semana?',2),
('¿Cómo usarías la lista de lo que queremos aprender?',2),
('¿Decimos todo lo que queremos decir?',2),
('¿Qué cosa dejaste mejor que cuando la agarraste hoy?',2),
('¿Cambió tu rueda de la vida?',2),
('¿Decís todo lo que pensás?',2),
('¿Estás dando lo mejor de vos?',2),
('¿Pensás todo lo que decís?',2),
('¿A quién ayudaste hoy?',2),
('¿Qué queres aprender de otro?',2),
('¿Qué es verdaderamente importante para vos?',2),
('¿Estás haciendo todo lo que querés?',2),
('¿Comò sabes si progresaste como equipo?',2),
('¿Si aumenta la velocidad progresò el equipo?',2),
('¿Si progreso el equipo aumentò la velocidad?',2),
('¿Què hacemos con las ideas de la hackathon?',2),
('¿Que harias si no existiera internet?',2),
('¿Qué hacemos  con las ideas de la hackathon?',2),
('¿Que harias si no existiera internet?',2),
('¿Que hago con mi palta?',2),
('¿Que clase de mundo estoy construyendo?',2),
('¿Para que podemos usar este pizarron(donde estaba el backlog de expensas)?',2),
('¿Agarrarias tu código en 6 meses?',2),
('¿Cuando estás satisfecho con tu código?',2),
('¿Que queres lograr con tus conversaciones?',2),
('¿Cuál fue el The Core que más te sirvió?',2),
('¿Que sos: Reader, Process o Writer?',2),
('¿Podes ser los 3?',2),
('¿Que cambiaste hoy?',2),
('¿Que se van a acordar de vos?',2),
('¿Que haces en la semana que tambien haces el finde?',2),
('¿Que pasaria si este pizarron no pudiera borrarse?',2),
('¿Que te olvidaste de preguntar hoy?',2),
('¿Que queja transformaste en acciòn?',2),
('¿Que te saca de tu zona de confort?',2),
('¿Qué riesgos estás tomando?',2),
('¿Cuantos commits te quedan de vida?',2),
('¿Como sabès que tu producto generò valor?',2),
('¿Què estàs pensando?',2),
('¿Que fail te mandaste hoy?',2),
('¿Que intentaste hacer distinto?',2),
('¿Que le dejaste hoy a tu equipo?',2),
('¿Para que te levantaste hoy?',2),
('¿Como te vas a divertir hoy?',2),
('¿A quien prejuzgaste hoy?',2),
('¿Reaccionas o acciones?',2),
('¿Que te gusto de hoy?',2),
('¿Como empezaste el día?',2),
('¿Que soltaste hoy?',2),
('¿Estás creciendo?',2),
('¿Que prejuicios tenes?',2),
('¿Que te gusta de PNT?',2),
('¿Que estás aportando?',2),
('¿Cómo mejoraste la comunicación en tu equipo?',2),
('¿Que conversacion importante tenes pendiente?',2),
('¿Que podes enseñarle a los demás?',2),
('¿Qué podes aprender de los demás?',2),
('¿Qué hacemos con las preguntas?',2),
('¿Que preguntas sin respuesta podes hacerte hoy?',2),
('¿En que te estas superando?',2),
('¿Que pregunta no haces por vergüenza?',2),
('¿Cual es tu mejor horario para codear?',2),
('¿En que te estas superando?',2),
('¿Que error convertiste en aprendizaje?',2),
('¿Cuanto tiempo podes estar sin internet?',2),
('¿Porque empezar por el por qué?',2),
('¿Cómo motivas a tu equipo?',2),
('¿Cómo te motivas?',2),
('¿Que es lo que más te gusta hacer?',2),
('¿Scrum o Kanban?',2),
('¿Que te gusta mas de hoy?',2),
('¿Como te queres sentir hoy?',2),
('¿Qué valores te gustaria trasmitir?',2),
('¿Qué valores representan las acciones que tomas hoy?',2),
('¿Cómo podemos lograr mejores diseños?',2),
('¿Que valores representan las acciones que tomamos hoy?',2),
('¿Como podemos lograr mejores diseños?',2),
('¿Que espectativas tenes para el año que viene?',2),
('¿En qué cosa nueva queres invertir tu tiempo?',2),
('¿Que les contas a otros de tu lugar de trabajo?',2),
('¿Que ideas te gustaría probar hoy?',2),
('¿De quien aprendes?',2),
('¿Què ideas te gustaria probar hoy?',2),
('¿De quièn aprendes?',2),
('¿Qué es posible?',3),
('¿Y si pasa exactamente como lo deseas?',3),
('¿Cuál es tu sueño?',3),
('¿Qué es lo emocionante para vos de esto?',3),
('¿Cuál es la necesidad?',3),
('¿Qué te dice tu intuición?',3);


INSERT INTO usuario
    (id,    email,                      password)
VALUES
    (1,     'matzam@gmail.com',         '$2a$10$6bdxXpmewXVY0SiN94aGEeKPcLW0XVrfZENii0ksZgBiTGJrTbgPu');

INSERT INTO rol
    (id_usuario,    rol)
VALUES
    (1,             'ROLE_USER');