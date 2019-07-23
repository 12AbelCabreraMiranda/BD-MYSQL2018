-- CREACIÓN DE LA BASE DE DATOS: TEMPORIZADOR Y CREACIÓN DE TABLAS

-- NOMBRE DE LA BASE DE DATOS
create database temporizador;
use temporizador;

-- 1.	CREACION DE TABLA:  CLIENTE_USUARIO --
create table usuario(
	idUsuario int primary key not null auto_increment, -- llave primaria y autoincrementable
    nombreUsuario varchar(25),
    contrasenia varchar(25) -- limite de caracter para contraseñas de los usuarios(mostrar limite en el login)
);
-- 		MODIFICANDO NOMBRE DE LA TABLA
alter table usuario rename cliente_usuario; -- ACTUALIZACION DE NOMBRE DE LA TABLA 1

-- 		AGREGANDO OTRO ATRIBUTO PARA LA RELACION
alter table cliente_usuario add id_registrocliente_usuario int;
-- 		RELACION DE TABLAS: usuario y registro_cliente
PENDIENTE RELACIONAR TABLAS
alter table cliente_usuario add constraint fk_cliente_usuario_idEmpresaEU foreign key (idEmpresaEU) references empresa(idEmpresa);
    -- RELACION SIN ALTERACION ESCRIBIRLO DETRO DEL PARENTECIS: constraint fk_detalle__compra_idProductoDC foreign key(idProductoDC ) references producto(idProducto)

-- 2.	CREACIÓN DE TALBA:  REGISTRO DE CLIENTE
create table registro_cliente(
id_registro_cliente int primary key not null auto_increment,
nombre1_cliente varchar(20),
nombre2_cliente varchar(20),
apellido1_cliente varchar(20),
apellido2_cliente varchar(20),
direccion_cliente varchar(50),
telefono_cliente varchar(15)
);






