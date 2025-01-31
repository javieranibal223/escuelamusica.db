-- SQLITE3

-- Crear tabla de alumnos
CREATE TABLE alumnos (
    id_alumno INTEGER PRIMARY KEY AUTOINCREMENT,
    apellido VARCHAR(100) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Crear tabla de cursos
CREATE TABLE cursos (
    id_curso INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100) NOT NULL,
    nivel VARCHAR(100) CHECK (nivel IN ('Principiante', 'Intermedio', 'Avanzado')),
    instrumento VARCHAR(100)
);

-- Crear tabla de inscripciones
CREATE TABLE inscripciones (
    id_inscripcion INTEGER PRIMARY KEY AUTOINCREMENT,
    fecha_inscripcion DATE DEFAULT CURRENT_DATE, -- Por defecto, fecha actual
    abono_inscripcion TEXT DEFAULT 'NO' CHECK(abono_inscripcion IN ('SI', 'NO')), -- Si no se indica, se registra "NO" por defecto
    id_alumno INTEGER,
    id_curso INTEGER,
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

--Insertar datos en la tabla de alumnos
INSERT INTO alumnos (apellido, nombre, fecha_nacimiento, direccion, telefono, email) VALUES
('Pérez', 'María', '2000-03-22', 'Avenida Siempre Viva 742', '555-5678', 'maria.perez@example.com'),
('López', 'Carlos', '1995-07-30', 'Calle de la Paz 456', '555-8765', 'carlos.lopez@example.com'),
('Martínez', 'Ana', '1985-11-11', 'Calle del Sol 789', '555-4321', 'ana.martinez@example.com'),
('Hernández', 'Luis', '1970-01-01', 'Calle Luna 321', '555-1357', 'luis.hernandez@example.com'),
('González', 'Sofía', '2005-09-09', 'Calle Estrella 654', '555-2468', 'sofia.gonzalez@example.com'),
('Rodríguez', 'Pedro', '1990-12-12', 'Calle Mar 987', '555-3698', 'pedro.rodriguez@example.com'),
('Ramírez', 'Javier', '1980-10-10', 'Calle Aire 753', '555-9512', 'javier.ramirez@example.com'),
('Torres', 'Claudia', '1998-04-04', 'Calle Nube 852', '555-1597', 'claudia.torres@example.com'),
('Flores', 'Diego', '1965-08-08', 'Calle Rayo 258', '555-3579', 'diego.flores@example.com'),
('Vásquez', 'Isabel', '2008-02-02', 'Calle Viento 147', '555-7539', 'isabel.vasquez@example.com'),
('Morales', 'Andrés', '1992-03-03', 'Calle Lluvia 369', '555-9513', 'andres.morales@example.com'),
('Cruz', 'Patricia', '1975-12-12', 'Calle Sombra 741', '555-2584', 'patricia.cruz@example.com'),
('Mendoza', 'Fernando', '1960-05-05', 'Calle Luz 963', '555-1478', 'fernando.mendoza@example.com');
--Insertar datos en la tabla de cursos
INSERT INTO cursos (nombre, nivel, instrumento) VALUES 
('Guitarra Principiante', 'Principiante', 'Guitarra'),
('Guitarra Intermedio', 'Intermedio', 'Guitarra'),
('Guitarra Avanzado', 'Avanzado', 'Guitarra'),
('Piano Principiante', 'Principiante', 'Piano'),
('Piano Intermedio', 'Intermedio', 'Piano'),
('Piano Avanzado', 'Avanzado', 'Piano'),
('Violín Principiante', 'Principiante', 'Violín'),
('Violín Intermedio', 'Intermedio', 'Violín'),
('Violín Avanzado', 'Avanzado', 'Violín');

-- Insertar datos en la tabla de inscripciones
INSERT INTO inscripciones (fecha_inscripcion, abono_inscripcion, id_alumno, id_curso) VALUES
('2023-01-15', 'SI', 1, 1),
('2023-01-20', 'NO', 1, 2),
('2023-02-20', 'SI', 2, 2),
('2023-03-10', 'SI', 3, 1),
('2023-04-05', 'NO', 4, 3),
('2023-05-12', 'SI', 5, 4),  
('2023-06-01', 'SI', 1, 3),
('2023-07-15', 'NO', 3, 2),
('2023-08-20', 'SI', 2, 4),
('2023-09-25', 'SI', 4, 5),
('2023-10-30', 'NO', 5, 6),
('2023-11-01', 'SI', 1, 5),
('2023-11-15', 'SI', 2, 6),
('2023-12-01', 'NO', 3, 3),
('2023-12-10', 'SI', 4, 1),
('2023-12-15', 'NO', 5, 2), 
('2023-12-20', 'SI', 1, 6),
('2023-12-25', 'SI', 2, 5),
('2024-01-05', 'NO', 3, 4),
('2024-01-10', 'SI', 4, 2),
('2024-01-15', 'SI', 5, 3);
