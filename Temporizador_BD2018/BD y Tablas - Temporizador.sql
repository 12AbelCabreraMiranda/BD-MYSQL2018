-- CREACIÓN DE LA BASE DE DATOS: TEMPORIZADOR Y CREACIÓN DE TABLAS

-- NOMBRE DE LA BASE DE DATOS
create database temporizador;
use temporizador;

-- CREACION DE TABLA USUARIO --
create table usuario(
	idUsuario int primary key not null auto_increment, -- llave primaria y autoincrementable
    nombreUsuario varchar(25),
    contrasenia varchar(25) -- limite de caracter para contraseñas de los usuarios(mostrar limite en el login)
)



