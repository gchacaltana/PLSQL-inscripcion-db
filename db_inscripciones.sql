CREATE TABLE inscripcion
(
    id_curso VARCHAR2(20),
    id_infante NUMBER,
    fecha_reg DATE,
    fecha_inicio DATE,
    fecha_fin DATE,
    estado VARCHAR2(10),
    nota CHAR(1)
);
 
CREATE TABLE infante
(
    id_infante NUMBER,
    nombre VARCHAR2(20),
    fecha_nac DATE
);
 
CREATE TABLE curso
(
    id_curso VARCHAR2(20),
    tema VARCHAR2(20),
    hora_inicio NUMBER,
    hora_fin NUMBER,
    frecuencia VARCHAR2(20),
    edad_inicial NUMBER,
    edad_final NUMBER,
    id_profesor NUMBER
);
 
CREATE TABLE profesor
(
    id_profesor NUMBER,
    nombre VARCHAR2(20)
);
 
CREATE TABLE premio
(
    id_premio NUMBER,
    nivel_max CHAR(1),
    nivel_min CHAR(1),
    descripcion VARCHAR2(5)
);
 
ALTER TABLE premio
add constraint pk_premio
primary key(id_premio);
 
ALTER TABLE infante
add constraint pk_infante
primary key(id_infante);
 
ALTER TABLE inscripcion
add constraint pk_inscripcion
primary key(id_curso, id_infante, fecha_reg);
 
ALTER TABLE curso
add constraint pk_curso
primary key(id_curso);
 
ALTER TABLE profesor
add constraint pk_profesor
primary key(id_profesor);
 
ALTER TABLE curso
add constraint fk_curso_profesor
foreign key (id_profesor)
references profesor(id_profesor);
 
ALTER TABLE inscripcion
add constraint fk_insc_infante
foreign key (id_infante)
references infante(id_infante);
 
ALTER TABLE inscripcion
add constraint fk_insc_curso
foreign key (id_curso)
references curso(id_curso);