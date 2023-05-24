CREATE TABLE data_teso (
    id          NUMBER(3) UNIQUE,
    matricula   NUMBER(9),
    nombre      VARCHAR2(30),
    apell_pa    VARCHAR2(30),
    apell_ma    VARCHAR2(30),
    carrera     VARCHAR2(30),
    grupo       VARCHAR2(5),
    semestre    NUMBER(2),
    CHECK ( semestre <= 9 ),
    edificio    VARCHAR2(1),
    promedio    NUMBER(3)
);

ALTER TABLE data_teso ADD PRIMARY KEY ( matricula );

DELETE FROM data_teso;

SELECT
    *
FROM
    data_teso;

CREATE OR REPLACE PROCEDURE dt_ins_alu (
    m_id          IN   NUMBER DEFAULT 0,
    m_matricula   IN   NUMBER DEFAULT 0,
    m_nombre      IN   VARCHAR2 DEFAULT 'nombre',
    m_apell_pa    IN   VARCHAR2 DEFAULT 'apellido_pa',
    m_apell_ma    IN   VARCHAR2 DEFAULT 'apellido_ma',
    m_carrera     IN   VARCHAR2 DEFAULT 'carrera',
    m_grupo       IN   VARCHAR2 DEFAULT '0000',
    m_semestre    IN   NUMBER DEFAULT 1,
    m_edificio    IN   VARCHAR2 DEFAULT '#',
    m_promedio    IN   NUMBER DEFAULT 0
) AS
BEGIN
    INSERT INTO data_teso VALUES (
        m_id,
        m_matricula,
        m_nombre,
        m_apell_pa,
        m_apell_ma,
        m_carrera,
        m_grupo,
        m_semestre,
        m_edificio,
        m_promedio
    );

END;

EXECUTE dt_ins_alu(2, 201020058, 'Silvia', 'Rodriguez', 'Villa',
           'CP', '6C21', 6, 'I', 86);

EXECUTE dt_ins_alu(3, 227020003, 'Dylan Antonio', 'Granillo', 'González',
           'TICS', '2T11', 2, 'E', 91);

EXECUTE dt_ins_alu(4, 206020008, 'Evelin Lizet', 'Cruz', 'Martínez',
           'ISC', '6S12', 6, 'B', 91);

EXECUTE dt_ins_alu(5, 206020047, 'Ariana Estefania', 'Rodriguez', 'Monroy',
           'ISC', '6S12', 6, 'B', 90);

EXECUTE dt_ins_alu(6, 220020151, 'Andrea', 'Pacheco', 'Galindo',
           'GT', '2G11', 2, 'C', 93);

EXECUTE dt_ins_alu(7, 213010021, 'Emmanuel', 'López', 'Nicolás',
           'IND', '4I11', 4, 'F', 93);

EXECUTE dt_ins_alu(8, 210010034, 'Denisse Elizabeth', 'Guzmán', 'Godínez',
           'GT', '5G11', 5, 'B', 80);

EXECUTE dt_ins_alu(9, 200020046, 'Alexander', 'Aguilar', 'Velazquez',
           'GT', '6G11', 6, 'D', 91);

EXECUTE dt_ins_alu(10, 200020008, 'Ariana Yamily', 'Sandoval', 'Torres',
           'GT', '6G11', 6, 'D', 95);

EXECUTE dt_ins_alu(11, 205020005, 'Luis Alberto', 'Santiago', 'García',
           'ER', '6E11', 6, 'I', 86);

EXECUTE dt_ins_alu(12, 220020210, 'Kevin', 'Gonzales', 'Godinez',
           'GT', '6G11', 6, 'D', 89);

EXECUTE dt_ins_alu(13, 205020001, 'Guadalupe', 'Hernández', 'Cruz',
           'ER', '6E11', 6, 'I', 83);

EXECUTE dt_ins_alu(14, 20002011, 'Kevin Aron', 'Juarez', 'Juarez',
           'GT', '6G11', 6, 'D', 81);

EXECUTE dt_ins_alu(15, 202020101, 'Hector Enrique', '	Megana', 'Quesada',
           'ADM', '6AD12', 6, 'D', 87);

EXECUTE dt_ins_alu(16, 220020040, 'Carlos Yael', 'Jimenez', 'Chirino',
           'GT', '2G22', 2, 'C', 86);

EXECUTE dt_ins_alu(17, 219020014, 'Jorge Eduardo', 'Martinez', 'Martinez',
           'SAM', '4SA11', 4, 'F', 91);

EXECUTE dt_ins_alu(18, 219020019, 'Uriel', 'Mendoza', 'Loza',
           'ISC', '3S11', 3, 'B', 70);

EXECUTE dt_ins_alu(19, 206010028, 'Cristian Alejandro', 'Romero', 'Rojano',
           'ISC', '7S11', 7, 'B', 93);

EXECUTE dt_ins_alu(20, 206020028, 'Brayan', 'Rodríguez', 'Rodríguez',
           'ISC', '6S11', 6, 'A', 94);

EXECUTE dt_ins_alu(21, 212020059, 'Karla Michelle', 'Hernandez', 'Orozco',
           'ADM', '4AD12', 4, 'D', 80);

EXECUTE dt_ins_alu(22, 222010001, 'Sandra Lizbeth', 'Arrieta', 'Torales',
           'ADM', '3AD11', 3, 'D', 95);

EXECUTE dt_ins_alu(23, 222010012, 'Leonardo', 'Lobaton', 'Vazquez',
           'ADM', '3AD11', 3, 'D', 87);

EXECUTE dt_ins_alu(24, 200200151, 'Andrea', 'Pacheco', 'Galindo',
           'GT', '2G11', 2, 'C', 93);

EXECUTE dt_ins_alu(25, 216020086, 'Alexis', 'Gomez', 'Medina',
           'ISC', '3S11', 3, 'B', 80);

EXECUTE dt_ins_alu(26, 220010014, 'Juan Sebastian', 'Marin', 'Robles',
           'ADM', '3AD11', 3, 'D', 80);

EXECUTE dt_ins_alu(27, 192020028, 'Itzel', 'Montalvo', 'Arano',
           'ADM', '5AD11', 5, 'D', 83);

EXECUTE dt_ins_alu(28, 206020014, 'Luis Alfredo', 'Guzmán', 'Collado',
           'ISC', '6S11', 6, 'A', 70);

EXECUTE dt_ins_alu(29, 214020146, 'Kate Leslie', 'De la rosa', 'Chavez',
           'IA', '8A12', 8, 'H', 80);

EXECUTE dt_ins_alu(30, 193020078, 'Jeny Guadalupe', 'Cruz', 'Leal',
           'IND', '6I12', 6, 'F', 82);

EXECUTE dt_ins_alu(31, 192010026, 'Albertossi De Jesus', 'Landeros', 'Gomes',
           'ADM', '8AD11', 8, 'E', 80);

EXECUTE dt_ins_alu(32, 230010037, 'Angel Guadalupe', 'Vazquez', 'Castillo',
           'GT', '1G21', 1, 'D', 78);

EXECUTE dt_ins_alu(33, 2010253, 'Miriam', 'Rojas', 'Nicolas',
           'CP', '6C11', 6, 'I', 76);

EXECUTE dt_ins_alu(34, 201020074, 'Evelin', 'Cruz', 'Herrera',
           'CP', '6C11', 6, 'I', 90);

EXECUTE dt_ins_alu(35, 203020077, 'Eduardo Jesús', 'Garcia', 'Ferreira',
           'IND', '6I12', 6, 'E', 83);

EXECUTE dt_ins_alu(36, 186010117, 'Angel Rafael', 'Mercado', 'Martinez',
           'ISC', '4S21', 4, 'A', 83);

EXECUTE dt_ins_alu(37, 216020104, 'Mariana', 'Valdes', 'Munguía',
           'ISC', '4S21', 4, 'A', 85);

EXECUTE dt_ins_alu(38, 195020004, 'Jesús Uriel', 'Valdez', 'Bobadilla',
           'ER', '7E11', 7, 'I', 91);

EXECUTE dt_ins_alu(39, 102010014, 'Juan de Dios', 'Sánchez', 'Durán',
           'IND', '7I11', 7, 'F', 95);

EXECUTE dt_ins_alu(40, 239010023, 'Andy Alberto', 'Sarmiento', 'Astudillo',
           'SAM', '1SA11', 1, 'E', 87);

EXECUTE dt_ins_alu(41, 239010035, 'Israel', 'Legorreta', 'Dominguez',
           'SAM', '1SA11', 1, 'E', 75);

EXECUTE dt_ins_alu(42, 224020038, 'Josué Azdhriel', 'Morales', 'Perez',
           'SAM', '2SA11', 2, 'D', 87);

EXECUTE dt_ins_alu(43, 229020029, 'Bruno', 'Esquivel', 'Bautista',
           'SAM', '2SA11', 2, 'D', 82);

EXECUTE dt_ins_alu(44, 219020058, 'Armando', 'Mercado', 'Lopez',
           'SAM', '4SA11', 4, 'E', 82);

EXECUTE dt_ins_alu(45, 229020085, 'Gibran Andres', 'Robledo', 'Barron',
           'SAM', '2SA11', 2, 'D', 86);

EXECUTE dt_ins_alu(46, 219020038, 'Arturo Natanael', 'Serrano', 'Galindo',
           'SAM', '4SA11', 4, 'E', 76);

EXECUTE dt_ins_alu(47, 229020066, 'Misael', 'García', 'Galicia',
           'SAM', '2SA11', 2, 'D', 87);

EXECUTE dt_ins_alu(48, 229020043, 'Angel', 'Santillan', 'Coria',
           'SAM', '2SA11', 2, 'D', 80);

EXECUTE dt_ins_alu(49, 193020111, 'José Raúl', 'Neri', 'Jiménez',
           'IND', '8I12', 8, 'F', 84);

EXECUTE dt_ins_alu(50, 223020023, 'Barrón', 'Mora', 'Israel',
           'IND', '2I11', 2, 'E', 85);

EXECUTE dt_ins_alu(51, 223020004, 'Ricardo', 'Juárez', 'Arrieta',
           'IND', '2I11', 2, 'E', 85);

EXECUTE dt_ins_alu(52, 223020008, 'Jonathan', 'Ramírez', 'Islas',
           'IND', '2I11', 2, 'E', 89);

EXECUTE dt_ins_alu(53, 201020065, 'Jonathan', 'Duran', 'Ildefonso',
           'CP', '6C11', 6, 'I', 78);

EXECUTE dt_ins_alu(54, 20102002, 'Luis Armando', 'Díaz', 'Islas',
           'CP', '6C11', 6, 'I', 82);

EXECUTE dt_ins_alu(55, 220020034, 'Victor Hugo', 'Centeno', 'García',
           'GT', '2G11', 2, 'C', 89);

EXECUTE dt_ins_alu(56, 215020014, 'Erick Alejandro', 'Martinez', 'Ordaz',
           'ER', '2E11', 2, 'I', 70);

EXECUTE dt_ins_alu(57, 183010096, 'Erik Mauricio', 'Sanchez', 'Cruz',
           'IND', '8I12', 8, 'F', 80);

EXECUTE dt_ins_alu(58, 201020020, 'Karen', 'Alvarado', 'Luna',
           'CP', '6C11', 6, 'I', 85);

EXECUTE dt_ins_alu(59, 223020028, 'Ivan Yael', 'Mendoza', 'Xihuilt',
           'IND', '2I11', 2, 'E', 87);

EXECUTE dt_ins_alu(60, 224020036, 'Luis Orlando', 'Rojas', 'Limón',
           'IA', '2A11', 2, 'H', 86);

EXECUTE dt_ins_alu(61, 201020017, 'Ana Cristy', 'Alfaro', 'De Jesus',
           'CP', '6C21', 6, 'I', 82);

EXECUTE dt_ins_alu(62, 201020034, 'Carlos Alberto', 'Largo', 'Camacho',
           'CP', '6C21', 6, 'I', 80);

EXECUTE dt_ins_alu(63, 207010011, 'Dulce Maria', 'Ortiz', 'Reyes',
           'TICS', '7T11', 7, 'E', 91);

EXECUTE dt_ins_alu(64, 207010014, 'Pamela', 'Perez', 'Ayala',
           'TICS', '7T11', 7, 'E', 88);

EXECUTE dt_ins_alu(65, 207010006, 'Angel Gabriel', 'Hernández', 'Garcia',
           'TICS', '7T11', 7, 'E', 93);

EXECUTE dt_ins_alu(66, 217010003, 'Pablo Uriel', 'Paz', 'Zuñiga',
           'TICS', '5T11', 5, 'E', 88);

EXECUTE dt_ins_alu(67, 215020003, 'Alexis', 'Carbajal', 'Gómez',
           'ER', '4E11', 4, 'I', 86);

EXECUTE dt_ins_alu(68, 215020004, 'Monica Valeria', 'Huerta', 'García',
           'ER', '4E11', 4, 'I', 96);

EXECUTE dt_ins_alu(69, 215020002, 'Karen Citlali', 'Arenas', 'Carmona',
           'ER', '4E11', 4, 'I', 94);

EXECUTE dt_ins_alu(70, 202020082, 'Blanca Flor', 'Albarran', 'Flor',
           'ADM', '6AD12', 6, 'D', 90);

EXECUTE dt_ins_alu(71, 202020091, 'Mariana Yaquelin', 'Becerra', 'Flores',
           'ADM', '6AD12', 6, 'D', 95);

EXECUTE dt_ins_alu(72, 202020096, 'Gabriela Jocelin', 'Cadena', 'Castro',
           'ADM', '6AD12', 6, 'D', 87);

EXECUTE dt_ins_alu(73, 215020017, 'Luis Alfredo', 'Torres', 'Hernández',
           'ER', '4E11', 4, 'I', 83);

EXECUTE dt_ins_alu(74, 225020006, 'Kevin Uriel', 'Rodríguez', 'Aguilar',
           'ER', '2E11', 2, 'I', 94);

EXECUTE dt_ins_alu(75, 215020001, 'Ricardo', 'García', 'López',
           'ER', '4E11', 4, 'I', 86);

EXECUTE dt_ins_alu(76, 224010003, 'Miguel Angel', 'García', 'Huerta',
           'IA', '3A11', 3, 'E', 84);

EXECUTE dt_ins_alu(77, 224010008, 'Brenda', 'Montiel', 'Juarez',
           'IA', '3A11', 3, 'H', 82);

EXECUTE dt_ins_alu(78, 214020017, 'Kareini', 'Domínguez', 'Samano',
           'IA', '3A11', 3, 'H', 80);

EXECUTE dt_ins_alu(79, 224010006, 'Brayan Isaac', 'Platero', 'Dominguez',
           'IA', '3A11', 3, 'H', 84);

EXECUTE dt_ins_alu(80, 224010001, 'Cecilia', 'Abad', 'Ramos',
           'IA', '3A11', 3, 'H', 73);

EXECUTE dt_ins_alu(81, 224010010, 'Adalid', 'Arguello', 'Carretero',
           'IA', '3A11', 3, 'H', 86);

EXECUTE dt_ins_alu(82, 224010004, 'Diana Abigail', 'Montes', 'Hernández',
           'IA', '3A11', 3, 'E', 90);

EXECUTE dt_ins_alu(83, 224010007, 'Casandra', 'Victoria', 'Reyes',
           'IA', '3A11', 3, 'H', 93);

EXECUTE dt_ins_alu(84, 197020009, 'Jair Abinadar', 'Montalvo', 'Rivera',
           'TICS', '8T11', 8, 'E', 94);

EXECUTE dt_ins_alu(85, 197020011, 'Paul', 'Torres', 'Aguillon',
           'TICS', '8T11', 8, 'E', 90);

EXECUTE dt_ins_alu(86, 197020004, 'Mauricio', 'Lara', 'Jiménez',
           'TICS', '8T11', 8, 'E', 92);

EXECUTE dt_ins_alu(87, 221020042, 'Gerardo Iván', 'Ceron', 'Ramírez',
           'CP', '2C11', 2, 'I', 92);

EXECUTE dt_ins_alu(88, 197020020, 'Christian Alexis', 'Hernández', 'Padilla',
           'TICS', '8T11', 8, 'E', 92);

EXECUTE dt_ins_alu(89, 197020015, 'Daniel', 'Ramirez', 'Romero',
           'TICS', '8T11', 8, 'E', 80);

EXECUTE dt_ins_alu(90, 221020073, 'Vicente Alejandro', 'Angel', 'Luna',
           'CP', '2C11', 2, 'I', 95);
 ----ISC----
CREATE TABLE isc (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(4),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_isc AS
BEGIN
    INSERT INTO isc (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'ISC';

END;

EXECUTE dt_alu_isc;

SELECT
    *
FROM
    isc;

DELETE FROM isc;
--TICS----

CREATE TABLE tics (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(4),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_tics AS
BEGIN
    INSERT INTO tics (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'TICS';

END;

EXECUTE dt_alu_tics;

SELECT
    *
FROM
    tics;

DELETE FROM tics;
--CP---
CREATE TABLE cp (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(4),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_cp AS
BEGIN
    INSERT INTO cp (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'CP';

END;

EXECUTE dt_alu_cp;

SELECT
    *
FROM
    cp;

DELETE FROM cp;
-GT-----

CREATE TABLE gt (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(4),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_gt AS
BEGIN
    INSERT INTO gt (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'GT';

END;

EXECUTE dt_alu_gt;

SELECT
    *
FROM
    gt;

DELETE FROM gt;
-IND--

CREATE TABLE ind (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(4),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_ind AS
BEGIN
    INSERT INTO ind (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'IND';

END;

EXECUTE dt_alu_ind;

SELECT
    *
FROM
    ind;

DELETE FROM ind;
-ER--

CREATE TABLE er (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(4),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_er AS
BEGIN
    INSERT INTO er (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'ER';

END;

EXECUTE dt_alu_er;

SELECT
    *
FROM
    er;

DELETE FROM er;

-ADM----

CREATE TABLE adm (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(5),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_adm AS
BEGIN
    INSERT INTO adm (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'ADM';

END;

EXECUTE dt_alu_adm;

SELECT
    *
FROM
    adm;

DELETE FROM adm;

-SAM----

CREATE TABLE sam (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(5),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_sam AS
BEGIN
    INSERT INTO sam (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'SAM';

END;

EXECUTE dt_alu_sam;

SELECT
    *
FROM
    sam;

DELETE FROM sam;
-IA---

CREATE TABLE ia (
    id              NUMBER(3),
    matricula       NUMBER(9),
    nombre_alumno   VARCHAR2(50),
    grupo           VARCHAR2(5),
    edificio        VARCHAR2(1)
);

CREATE OR REPLACE PROCEDURE dt_alu_ia AS
BEGIN
    INSERT INTO ia (
        id,
        matricula,
        nombre_alumno,
        grupo,
        edificio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            grupo,
            edificio
        FROM
            data_teso -- Agregar espacio entre nombre y apellidos 
        WHERE
            carrera = 'IA';

END;

EXECUTE dt_alu_ia;

SELECT
    *
FROM
    ia;

DELETE FROM ia;

SELECT
    *
FROM
    data_teso
WHERE
    semestre = 1;


-----------------------------1er EJE--------------------

CREATE TABLE profesores_tesoem (
    id             NUMBER NOT NULL UNIQUE,
    num_empleado   NUMBER(9),
    nombre         VARCHAR2(30),
    apell_pa       VARCHAR2(30),
    apell_ma       VARCHAR2(30),
    carrera        VARCHAR2(30),
    nombre_clase   VARCHAR(60),
    grupo          VARCHAR(5)
);

ALTER TABLE profesores_tesoem ADD PRIMARY KEY ( id );

SELECT
    *
FROM
    profesores_tesoem;

DELETE FROM profesores_tesoem;

CREATE OR REPLACE PROCEDURE dt_ins_prof (
    m_id             IN   NUMBER DEFAULT 0,
    m_num_empleado   IN   NUMBER DEFAULT 0,
    m_nombre         IN   VARCHAR2 DEFAULT 'nombre',
    m_apell_pa       IN   VARCHAR2 DEFAULT 'apellido_pa',
    m_apell_ma       IN   VARCHAR2 DEFAULT 'apellido_ma',
    m_carrera        IN   VARCHAR2 DEFAULT 'carrera',
    m_nombre_clase   IN   VARCHAR2 DEFAULT 'clase',
    m_grupo          IN   VARCHAR2 DEFAULT 'grupo'
) AS
BEGIN
    INSERT INTO profesores_tesoem VALUES (
        m_id,
        m_num_empleado,
        m_nombre,
        m_apell_pa,
        m_apell_ma,
        m_carrera,
        m_nombre_clase,
        m_grupo
    );

END;

EXECUTE dt_ins_prof(1, 760, 'Oscar Abimael', 'Sanchez', 'De los Santos',
            'ISC', 'Fundamentos de Base de Datos', '4S11');

EXECUTE dt_ins_prof(2, 760, 'Oscar Abimael', 'Sanchez', 'De los Santos',
            'ISC', 'Fundamentos de Base de Datos', '4S12');

EXECUTE dt_ins_prof(3, 760, 'Oscar Abimael', 'Sanchez', 'De los Santos',
            'ISC', 'Fundamentos de Ingenieria de Software', '5S11');

EXECUTE dt_ins_prof(4, 760, 'Oscar Abimael', 'Sanchez', 'De los Santos',
            'ADM', 'Aplicaciones empresariales para las MYPYMES', '7AD11');

EXECUTE dt_ins_prof(5, 760, 'Oscar Abimael', 'Sanchez', 'De los Santos',
            'TICS', 'Metodologias Agiles', '7T11');

EXECUTE dt_ins_prof(6, 681, 'Francisco Raul', 'Salvador', 'Ginez',
            'ISC', 'Redes de Computadoras', '6S11');

EXECUTE dt_ins_prof(7, 681, 'Francisco Raul', 'Salvador', 'Ginez',
            'ISC', 'Redes de Computadoras', '6S12');

EXECUTE dt_ins_prof(8, 681, 'Francisco Raul', 'Salvador', 'Ginez',
            'ISC', 'Conmutación y Enrutamiento de Computadoras', '7S11');

EXECUTE dt_ins_prof(9, 209, 'Maria Cristina', 'Rodriguez', 'Mendias',
            'ISC', 'Investigación de Operaciones', '3S11');

EXECUTE dt_ins_prof(10, 209, 'Maria Cristina', 'Rodriguez', 'Mendias',
            'ISC', 'Métodos Numericos', '4S11');

EXECUTE dt_ins_prof(11, 209, 'Maria Cristina', 'Rodriguez', 'Mendias',
            'ISC', 'Métodos Numericos', '4S12');

EXECUTE dt_ins_prof(12, 209, 'Maria Cristina', 'Rodriguez', 'Mendias',
            'ISC', 'Métodos Numericos', '4S21');

EXECUTE dt_ins_prof(13, 209, 'Maria Cristina', 'Rodriguez', 'Mendias',
            'ISC', 'Simulación', '4S11');

EXECUTE dt_ins_prof(14, 209, 'Maria Cristina', 'Rodriguez', 'Mendias',
            'ISC', 'Simulación', '4S12');

EXECUTE dt_ins_prof(15, 209, 'Maria Cristina', 'Rodriguez', 'Mendias',
            'ISC', 'Simulación', '4S21');

EXECUTE dt_ins_prof(16, 147, 'Gerardo', 'Nava', 'Hernandez',
            'ISC', 'Graficación', '5S11');

EXECUTE dt_ins_prof(17, 147, 'Gerardo', 'Nava', 'Hernandez',
            'ISC', 'Lenguajes de Interfaz', '6S11');

EXECUTE dt_ins_prof(18, 147, 'Gerardo', 'Nava', 'Hernandez',
            'ISC', 'Lenguajes de Interfaz', '6S12');

EXECUTE dt_ins_prof(19, 147, 'Gerardo', 'Nava', 'Hernandez',
            'ISC', 'Lenguajes de Interfaz', '6S21');

EXECUTE dt_ins_prof(20, 212, 'Gustavo Moises', 'Romero', 'Gonzalez',
            'ISC', 'Sistemas Operativos', '5S11');

EXECUTE dt_ins_prof(21, 212, 'Gustavo Moises', 'Romero', 'Gonzalez',
            'ISC', 'Taller de Sistemas Operativos', '6S11');

EXECUTE dt_ins_prof(22, 212, 'Gustavo Moises', 'Romero', 'Gonzalez',
            'ISC', 'Taller de Sistemas Operativos', '6S12');

EXECUTE dt_ins_prof(23, 212, 'Gustavo Moises', 'Romero', 'Gonzalez',
            'ISC', 'Taller de Sistemas Operativos', '6S21');

EXECUTE dt_ins_prof(24, 212, 'Gustavo Moises', 'Romero', 'Gonzalez',
            'TICS', 'Bases de Datos Distribuidas', '5T11');

EXECUTE dt_ins_prof(25, 212, 'Gustavo Moises', 'Romero', 'Gonzalez',
            'TICS', 'Sistemas Operativos 1', '6T11');

EXECUTE dt_ins_prof(26, 212, 'Gustavo Moises', 'Romero', 'Gonzalez',
            'TICS', 'Sistemas Operativos 2', '7T11');

EXECUTE dt_ins_prof(27, 243, 'Albertossi', 'Landeros', 'Rojas',
            'ISC', 'Principios Electronicos', '4S11');

EXECUTE dt_ins_prof(28, 243, 'Albertossi', 'Landeros', 'Rojas',
            'ISC', 'Principios Electronicos', '4S12');

EXECUTE dt_ins_prof(29, 243, 'Albertossi', 'Landeros', 'Rojas',
            'ISC', 'Principios Electronicos', '4S21');

EXECUTE dt_ins_prof(30, 243, 'Albertossi', 'Landeros', 'Rojas',
            'ISC', 'Sistemas Programables', '7S11');

EXECUTE dt_ins_prof(31, 243, 'Albertossi', 'Landeros', 'Rojas',
            'TICS', 'Circuitos Eléctricos y Eléctronicos', '4T11');

EXECUTE dt_ins_prof(32, 188, 'Luis Israel', 'Guerrero', 'Lucio',
            'GT', 'Microbiología de los alimentos', '1G11');

EXECUTE dt_ins_prof(33, 188, 'Luis Israel', 'Guerrero', 'Lucio',
            'GT', 'Microbiología de los alimentos', '1G21');

EXECUTE dt_ins_prof(34, 188, 'Luis Israel', 'Guerrero', 'Lucio',
            'GT', 'Quimica de los alimentos', '3G11');

EXECUTE dt_ins_prof(35, 348, 'Jose Luis', 'Villareal', 'Lopez',
            'TICS', 'Analisis de señales y sistemas de comunicación', '5T11');

EXECUTE dt_ins_prof(36, 348, 'Jose Luis', 'Villareal', 'Lopez',
            'TICS', 'Electricidad y Magnetismo', '3T11');

EXECUTE dt_ins_prof(37, 348, 'Jose Luis', 'Villareal', 'Lopez',
            'TICS', 'Telecomunicaciones', '6T11');

EXECUTE dt_ins_prof(38, 348, 'Jose Luis', 'Villareal', 'Lopez',
            'TICS', 'Administración y Seguridad de redes', '8T11');

EXECUTE dt_ins_prof(39, 348, 'Jose Luis', 'Villareal', 'Lopez',
            'TICS', 'Administración y Seguridad de redes', '8T21');

EXECUTE dt_ins_prof(40, 756, 'Cesar Michael', 'Gonzalez', 'Serrano',
            'ADM', 'Adminstración Financiera', '6AD12');

EXECUTE dt_ins_prof(41, 756, 'Cesar Michael', 'Gonzalez', 'Serrano',
            'ADM', 'Economia', '4AD11');

EXECUTE dt_ins_prof(42, 756, 'Cesar Michael', 'Gonzalez', 'Serrano',
            'ADM', 'Administracion de la Producción', '6AD11');

EXECUTE dt_ins_prof(43, 756, 'Cesar Michael', 'Gonzalez', 'Serrano',
            'ADM', 'Finanzas Etrategicas para MIPYMES', '8AD11');

EXECUTE dt_ins_prof(44, 694, 'Beatriz', 'Cortez', 'Rodríguez',
            'ADM', 'Relaciones Publicas', '8AD12');

EXECUTE dt_ins_prof(45, 694, 'Beatriz', 'Cortez', 'Rodríguez',
            'ADM', 'Capital Humano', '5AD11');

EXECUTE dt_ins_prof(46, 694, 'Beatriz', 'Cortez', 'Rodríguez',
            'ADM', 'Administración de la calidad', '7AD11');

EXECUTE dt_ins_prof(47, 694, 'Beatriz', 'Cortez', 'Rodríguez',
            'GT', 'Dirección de establecimientos de Alimentos y Bebidas', '8G11');

EXECUTE dt_ins_prof(48, 415, 'Juan Carlos', 'Martínez', 'Hernández',
            'ER', 'Sistemas Térmicos', '6E11');

EXECUTE dt_ins_prof(49, 415, 'Juan Carlos', 'Martínez', 'Hernández',
            'ER', 'Termodinámica', '4E11');

EXECUTE dt_ins_prof(50, 415, 'Juan Carlos', 'Martínez', 'Hernández',
            'ER', 'Macro moléculas', '7E11');

EXECUTE dt_ins_prof(51, 698, 'Alejandro', 'Bustamante', 'Duran',
            'GT', 'Tendencias de la alta repostería', '8G11');

EXECUTE dt_ins_prof(52, 698, 'Alejandro', 'Bustamante', 'Duran',
            'GT', 'Tendencias de la alta repostería', '8G12');

EXECUTE dt_ins_prof(53, 698, 'Alejandro', 'Bustamante', 'Duran',
            'GT', 'Tendencias de la alta repostería', '8G21');

EXECUTE dt_ins_prof(54, 698, 'Alejandro', 'Bustamante', 'Duran',
            'GT', 'Panaderia', '4G21');

EXECUTE dt_ins_prof(55, 698, 'Alejandro', 'Bustamante', 'Duran',
            'GT', 'Introducción a la reposteria', '5G11');

EXECUTE dt_ins_prof(56, 698, 'Alejandro', 'Bustamante', 'Duran',
            'GT', 'Introducción a la reposteria', '5G21');

EXECUTE dt_ins_prof(57, 720, 'Monserrat', 'Hernández', 'Flores',
            'GT', 'Cocina internacional 1', '6G11');

EXECUTE dt_ins_prof(58, 720, 'Monserrat', 'Hernández', 'Flores',
            'GT', 'Cocina internacional 1', '6G21');

EXECUTE dt_ins_prof(59, 720, 'Monserrat', 'Hernández', 'Flores',
            'GT', 'Cocina internacional 1', '6G22');

EXECUTE dt_ins_prof(60, 720, 'Monserrat', 'Hernández', 'Flores',
            'GT', 'Cultura y Patrimonio', '2G22');

EXECUTE dt_ins_prof(61, 720, 'Monserrat', 'Hernández', 'Flores',
            'GT', 'Cultura y Patrimonio', '2G21');

EXECUTE dt_ins_prof(62, 630, 'Marco', 'Mejia', 'Villalpando',
            'IA', 'Probabilidad y Estadística Ambiental', '2A11');

EXECUTE dt_ins_prof(63, 630, 'Marco', 'Mejia', 'Villalpando',
            'IA', 'Producción más limpia', '8A11');

EXECUTE dt_ins_prof(64, 630, 'Marco', 'Mejia', 'Villalpando',
            'IA', 'Producción más limpia', '8A12');

EXECUTE dt_ins_prof(65, 630, 'Marco', 'Mejia', 'Villalpando',
            'IA', 'Residuos Valorisables', '8A11');

EXECUTE dt_ins_prof(66, 630, 'Marco', 'Mejia', 'Villalpando',
            'IA', 'Residuos Valorisables', '8A12');

EXECUTE dt_ins_prof(67, 630, 'Marco', 'Mejia', 'Villalpando',
            'IA', 'Toxicología Am biental', '5A11');

EXECUTE dt_ins_prof(68, 630, 'Marco', 'Mejia', 'Villalpando',
            'IA', 'Biomquimica', '3A11');

EXECUTE dt_ins_prof(69, 695, 'Minandro', 'Camarillo', 'Cadena',
            'IA', 'Calculo Diferencial', '1a11');

EXECUTE dt_ins_prof(70, 695, 'Minandro', 'Camarillo', 'Cadena',
            'IA', 'Calculo Integral', '2A11');

EXECUTE dt_ins_prof(71, 695, 'Minandro', 'Camarillo', 'Cadena',
            'IA', 'Calculo Vectorial', '3A11');

EXECUTE dt_ins_prof(72, 695, 'Minandro', 'Camarillo', 'Cadena',
            'IA', 'Ecuaciones Diferenciales', '4A11');

EXECUTE dt_ins_prof(73, 477, 'Victor', 'Duarte', 'Zaragoza',
            'IA', 'Fundamentos de Investigación', '7A11');

EXECUTE dt_ins_prof(74, 477, 'Victor', 'Duarte', 'Zaragoza',
            'IA', 'Taller de investigación 1', '6A11');

EXECUTE dt_ins_prof(75, 477, 'Victor', 'Duarte', 'Zaragoza',
            'IA', 'Manejo Integral del Suelo ', '8A11');

EXECUTE dt_ins_prof(76, 477, 'Victor', 'Duarte', 'Zaragoza',
            'IA', 'Remediación del suelo', '7A11');
 
 
 --ISCProf--------

CREATE TABLE profes_isc (
    id                NUMBER NOT NULL UNIQUE,
    num_empleado      NUMBER(9),
    nombre_completo   VARCHAR2(60),
    carrera           VARCHAR2(30),
    nombre_clase      VARCHAR(60),
    grupo             VARCHAR(5)
);

CREATE OR REPLACE PROCEDURE dt_profes_isc AS
BEGIN
    INSERT INTO profes_isc (
        id,
        num_empleado,
        nombre_completo,
        carrera,
        nombre_clase,
        grupo
    )
        SELECT
            id,
            num_empleado,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            carrera,
            nombre_clase,
            grupo
        FROM
            profesores_tesoem
        WHERE
            carrera = 'ISC';

END;

EXECUTE pa_profes_isc;

SELECT
    *
FROM
    profes_isc;

DELETE FROM profes_isc;
-TICSProf---

CREATE TABLE profes_tics (
    id                NUMBER NOT NULL UNIQUE,
    num_empleado      NUMBER(9),
    nombre_completo   VARCHAR2(60),
    carrera           VARCHAR2(30),
    nombre_clase      VARCHAR(60),
    grupo             VARCHAR(5)
);

CREATE OR REPLACE PROCEDURE pa_profes_tics AS
BEGIN
    INSERT INTO profes_tics (
        id,
        num_empleado,
        nombre_completo,
        carrera,
        nombre_clase,
        grupo
    )
        SELECT
            id,
            num_empleado,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            carrera,
            nombre_clase,
            grupo
        FROM
            profesores_tesoem
        WHERE
            carrera = 'TICS';

END;

EXECUTE pa_profes_tics;

SELECT
    *
FROM
    profes_tics;

DELETE FROM profes_tics;
-CPProf--------

CREATE TABLE profes_cp (
    id                NUMBER NOT NULL UNIQUE,
    num_empleado      NUMBER(9),
    nombre_completo   VARCHAR2(60),
    carrera           VARCHAR2(30),
    nombre_clase      VARCHAR(60),
    grupo             VARCHAR(5)
);

CREATE OR REPLACE PROCEDURE pa_profes_cp AS
BEGIN
    INSERT INTO profes_cp (
        id,
        num_empleado,
        nombre_completo,
        carrera,
        nombre_clase,
        grupo
    )
        SELECT
            id,
            num_empleado,
            nombre
            || ' '
            || apell_pa
            || ' '
            || apell_ma,
            carrera,
            nombre_clase,
            grupo
        FROM
            profesores_tesoem
        WHERE
            carrera = 'CP';

END;

EXECUTE dt_alu_cp;

SELECT
    *
FROM
    profes_cp;

DELETE FROM profes_cp;


-GTProf----
create table profes_GT(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_GT
as
begin
insert into profes_GT (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'GT';
end;

execute pa_profes_GT;

select* from profes_GT;

delete from profes_GT;
---INDProf--------
create table profes_IND(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_IND
as
begin
insert into profes_IND (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'IND';
end;
execute pa_profes_IND;

select* from profes_IND;

delete from profes_IND;
-ERProf---
create table profes_ER(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_ER
as
begin
insert into profes_ER (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'ER';
end;

execute pa_profes_ER;

select* from profes_ER;

delete from profes_ER;
-ADMProf----
create table profes_ADM(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_ADM
as
begin
insert into profes_ADM (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'ADM';
end;

execute pa_profes_ADM;

select* from profes_ADM;

delete from profes_ADM;
-SAMProf--
create table profes_SAM(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_SAM
as
begin
insert into profes_SAM (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem 
where Carrera = 'SAM';
end;

execute pa_profes_SAM;

select* from profes_SAM;

delete from profes_SAM;
-IAProf--
 create table profes_IA(id number not null unique,
Num_empleado number (9) ,
Nombre_completo varchar2 (60),
Carrera varchar2 (30),
Nombre_clase varchar  (60),
grupo varchar (5));
 
create or replace procedure pa_profes_IA
as
begin
insert into profes_IA (id, Num_empleado, Nombre_completo, Carrera, Nombre_clase,grupo)
select id, Num_empleado, Nombre | |' '| | Apell_pa | | ' ' | |  Apell_ma, Carrera, Nombre_clase,grupo  from profesores_tesoem  
where Carrera = 'IA';
end;

execute pa_profes_IA;

select * from profes_IA;

delete from profes_IA; 
 -------------------------------------------------------------EJE 2-----------------------------------------------------------------------------------------
 ----------------------------------------------------beca al 100% de aprovechamiento--------------------------------------------------------------------
create table cien_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_cien_porciento
as
begin
insert into cien_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from data_teso 
where Promedio >=95;
end;

execute pa_cien_porciento;

select* from cien_porciento;

delete from cien_porciento;
 ----------------------------------------------------beca al 75% de aprovechamiento---------------------------------------------------------------------
create table setentaycinco_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_setentaycinco_porciento
as
begin
insert into setentaycinco_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from data_teso 
where Promedio >=92 and Promedio <95;
end;

execute pa_setentaycinco_porciento;

select* from setentaycinco_porciento;

delete from setentaycinco_porciento;

 ------------------------------------------------------beca al 50% de aprovechamiento-------------------------------------------------------------------------
create table cincuenta_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_cincuenta_porciento
as
begin
insert into cincuenta_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from data_teso 
where Promedio >=90 and Promedio <92;
end;

execute pa_cincuenta_porciento;

select* from cincuenta_porciento;

delete from cincuenta_porciento;
 ------------------------------------------------------beca al 35% de aprovechamiento-----87-89--------------------------------------------------------------------
create table treintaycinco_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_treintaycinco_porciento
as
begin
insert into treintaycinco_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from data_teso 
where Promedio >=87 and Promedio <90;
end;

execute pa_treintaycinco_porciento;

select* from treintaycinco_porciento;

delete from treintaycinco_porciento;
 ------------------------------------------------------beca al 25% de aprovechamiento------------------------------------------------------------------------
create table veinticinco_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_veinticinco_porciento
as
begin
insert into veinticinco_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from data_teso 
where Promedio >=84 and Promedio <87;
end;

execute pa_veinticinco_porciento;

select* from veinticinco_porciento;

delete from veinticinco_porciento;
 ------------------------------------------------------Beca al 10% de aprovechamiento------------------------------------------------------------------------
create table diez_porciento ( id number (3) unique,
Matricula number (9),
Nombre_Alumno varchar2 (60),
Carrera varchar2 (30),
Semestre number (2),
Check (Semestre <=9),
Promedio number (3));

create or replace PROCEDURE pa_diez_porciento
as
begin
insert into diez_porciento (id, matricula, Nombre_Alumno, Carrera, Semestre, Promedio)
select id, Matricula, Nombre ||' '|| Apell_pa ||' '||  Apell_ma, Carrera, Semestre, Promedio  from data_teso 
where Promedio >=80 and Promedio <84;
end;

execute pa_diez_porciento;

select* from diez_porciento;

delete from diez_porciento;
 ------------------------------------------------------Alumnos sin beca ------------------------------------------------------------------------
create table cero_porciento ( id NUMBER(3) UNIQUE,
matricula NUMBER(9),
nombre_alumno VARCHAR2(60),
carrera VARCHAR2(30),
semestre NUMBER(2),
    CHECK ( semestre <= 9 ),
    promedio NUMBER(3)
);
CREATE OR REPLACE PROCEDURE pa_cero_porciento AS
BEGIN
    INSERT INTO cero_porciento (
        id,
        matricula,
        nombre_alumno,
        carrera,
        semestre,
        promedio
    )
        SELECT
            id,
            matricula,
            nombre
            || ' '
               || apell_pa
                  || ' '
                     || apell_ma,
            carrera,
            semestre,
            promedio
        FROM
            data_teso
        WHERE
            promedio < 80;

END;

EXECUTE pa_cero_porciento;

SELECT
    *
FROM
    cero_porciento;

DELETE FROM cero_porciento;
----------------------------------------------------------------- ejercicio 3-------------------------------------------------------------------------
