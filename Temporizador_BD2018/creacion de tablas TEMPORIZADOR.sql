-- CREACION DE TABLAS PARA LA BASE DE DATOS TEMPORIZADOR

-- 1.	CREACION DE TABLA:  EMPLEADO --
create table empleado(
	idEmpleado int primary key not null auto_increment, -- llave primaria y autoincrementable
    nombre varchar(50),
    apellido varchar(50), 
	direccion varchar(100),
    celular varchar(15)
);

-- 1.	CREACION DE TABLA:  CLIENTE
create table registro_cliente(
	idRegistro_Cliente int primary key not null auto_increment,
    nombre varchar(50),
    apellido varchar(50),
    celular varchar(25),
    direccion varchar(100));
    
-- 1.	CREACION DE TABLA:  TIPO USUARIO
create table tipo_usuario(
	idTipo_usuario int primary key not null auto_increment,
    nombre_tipo_usuario varchar(25)
);

-- 1.	CREACION DE TABLA:  USUARIO 
-- 		RELACION DE TABLA: TIPO USUARIO, EMPLEADO, REGISTRO CLIENTE
create table usuarios(
	idUsuario int primary key not null auto_increment,
    nombre_usuario varchar(25),
    password_usuario varchar(25),
    id_tipo_usuario int,
    id_empleado int,
    id_registro_cliente int,
    -- RELACION DE TABLAS
    constraint fk_usuario_idTipoUsu foreign key(id_tipo_usuario) references tipo_usuario(idTipo_usuario),
    constraint fk_usuario_idEmplea foreign key(id_empleado) references empleado(idEmpleado),
    constraint fk_usuario_idRegis foreign key(id_registro_cliente) references registro_cliente(idRegistro_Cliente)
);

-- 1.	CREACION DE TABLA:  
create table horarios_servicios(
	idHorarios_servicios int primary key not null auto_increment,
    horas_de_servicios varchar
);


