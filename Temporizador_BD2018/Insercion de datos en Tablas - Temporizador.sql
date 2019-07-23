-- TABLA INSERCION DE DATOS EN LAS TABLAS DE LA BASE DE DATOS TEMPORIZADOR
use temporizador;

-- INSERSION DE DATOS - TABLA USUARIOS - Esta tabla fue alterado por un nuevo nombre: cliente_usuario tambien se le agregó una llave foranea
insert into usuario(nombreUsuario,contrasenia) values	('Abel', 'cabrera'), 
														('Arturo','lux123'),
														('Esmeralda','estrada77');
                                                        
-- INSERSIÓN DE DATOS - TABLA REGISTRO_CLIENTE
insert into registro_cliente(nombre1_cliente, nombre2_cliente, apellido1_cliente, apellido2_cliente, direccion_cliente, telefono_cliente)
			values ("Abel",		 "",		 "Cabrera",	"Miranda",	"Asintal",		 "7723-4323"),
					("Rodrigo",	 "Asael",	 "Chom",	"luson",  	"Retalhuleu",	 "3456-3456"),
                    ("Luis",	 "Pedro",	 "Jocun",	"Lopez",	"San Felipe",	 "2341-2343"),
                    ("Juan",	 "Israel",	 "Lux",		"Lux",		"San Carlos",	 "5421-9864"),
                    ("Maria",	 "Lucia",	 "Molina",	"Molina",	"Caballo Blanco","7875-4567");


use temporizador;
select *from cliente_usuario;
select *from registro_cliente

