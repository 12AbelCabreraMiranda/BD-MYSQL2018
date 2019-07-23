insert into clientes(nombre,apellido,celular,direccion)
	values('Luis','Mendez','5444-1004','7ma calle 9-42 Zona 1'),
		  ('Arturo','Cortez','5864-6984','9na avenida Zona 4'),
		  ('Jorge','Chávez','7771-4140','Cantón las Victorias'),
		  ('Cecilia','Leal','5456-3321','Llanos del Pinal'),
		  ('María','Herrera','7688-4532','Cantón la chula zona 4'),
		  ('Junior','Dosantos','5432-6690','Las Picositas de San Luis'),
		  ('Fabricio','Werdrum','7988-6548','Kilometro 94.5 frente a pasarela'),
		  ('Jhony','Bravo','7771-0432','Cantón Dolores Zona 4'),
		  ('Fernande','Perez','5335-6743','5ta calle 6-55 zona 2'),
		  ('Sara','Aguilar','4534-5564','Zona 3'),
		  ('Felipe','Dominguez','7771-5127','Colonia Trinidad zona 5'),
		  ('Akasio','Martinez','5675-3476','Hacienda San Joaquín Zona 4'),
		  ('Miguel','Quintanilla','7771-3245','Frente al Cementerio Zona 3'),
		  ('Jose','López','7771-9452','Zona 4'),
		  ('Canario','Ortíz','4179-3176','Colonia Mendizabal Zona 2');

insert into empleados(nombre,apellido,direccion,celular) 
					  values('Gaby','Graciel','Retalhuleu','5634-7632'),
							('Emerson','Quiej','Retalhuleu','3444-6533'),
                            ('Pamela','Silva','Retalhuleu','2343-5677');
                            
insert into tipo_usuario(nombre_tipo_usuario) values('Aministrador'),('Empleado');

insert into usuarios(nombre,password,id_tipo_usuario,id_empleado) 
					 values ('emerson','eme123',1,2),
							('gaby','gaby123',2,1),
                            ('pamela','pame123',2,3);
	
insert into cancha(tamanio_cancha) values('Cancha Grande'),('Cancha Mediana'),('Cancha Pequeña');

insert into tiempo_de_juego(tiempo_inicio,tiempo_final,total_tiempo_a_reservar,fecha_a_reservar,id_cancha)
			values('14:00','15:00',1,'03-04-2018',1,1),('18:00','19:00',1,'13-04-2018',2,1),
				  ('20:00','21:00',1,'10-04-2018',3,1),('17:00','18:00',1,'05-04-2018',1,1);

-- valores predeterminado por cada tiempo específico
insert into tiempo(tiempo,valor_tiempo)values('Media Hora',50),('Una Hora',100),('Hora y Media',150),
											 ('Dos Horas',200);

insert into pagos(tiempo_pago, id_tiempo_pago_total, id_tiempo_juego, fecha_cobro, hora_cobro)
			values(100,2,1,'03-04-2018','15:10'),(100,2,2,'13-04-2018','19:15'),
				  (100,2,3,'10-04-2018','21:12'),(100,2,4,'05-04-2018','18:10');
            
insert into bitacora(id_usuario,id_pago, fecha,hora)
				values(2,3,'03-04-2018','15:10'),(2,4,'13-04-2018','19:15'),
					  (2,5,'10-04-2018','21:12'),(2,6,'05-04-2018','18:10');

insert into estado_reserva(nombre_estado)values('PENDIENTE'),('ACTIVO'),('CANCELADO'),('ACADEMICO');
               
insert into servicio(nombre_servicios)
				values('Juego Amistoso'),('Campeonato'),('Academico');
			
insert into dias_servicios(nombre_dias_servicios)
				values('Lunes'),('Martes'),('Miercoles'),('Jueves'),('Viernes'),('Sabado'),('Domingo');
   
insert into detalle_servicio(id_servicio, id_dias_servicios)
					values(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),
						  (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),
                          (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7);

insert into reservaciones(id_tiempo_de_juego, id_cliente, id_estado_reserva, id_detalle_servicios, fecha_d_reserva, hora_d_reserva)
					values(1,1,5,2,'02-04-2018','18:25'),
						  (2,2,5,5,'12-04-2018','15:15'),
                          (3,3,5,2,'09-04-2018','19:03'),
						  (4,4,5,4,'05-04-2018','09:31');
                          






                            