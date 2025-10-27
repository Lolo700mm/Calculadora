CREATE DATABASE IF NOT EXISTS bibli;
USE bibli;

CREATE TABLE IF NOT EXISTS usuarios(
Id_usuario INT UNIQUE PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Direccion VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS libros(
Id_libro INT UNIQUE PRIMARY KEY,
Titulo VARCHAR (50) NOT NULL,
Autor VARCHAR (50) NOT NULL,
Año_publicacion DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS prestamos(
Id_prestamo INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
Id_usuario INT NOT NULL,
Id_Libro INT NOT NULL,
libros_tomados VARCHAR(50) NOT NULL,
Fecha_prestamo DATE,
Fecha_devolucion DATE,


CONSTRAINT fk_prestamo_usuario FOREIGN KEY (Id_usuario) REFERENCES usuarios (Id_usuario),
CONSTRAINT fk_prestamo_libro FOREIGN KEY (Id_libro) REFERENCES libros (Id_libro)
);