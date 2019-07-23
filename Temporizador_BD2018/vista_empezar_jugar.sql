create view vista_empezar_jugar as

select cancha.tamanio_cancha, clientes.nombre as Cliente, tiempo_de_juego.cant_de_hora_a_jugar, tiempo_de_juego.tiempo_inicio
as inicio_de_juego

from reservaciones
inner join clientes on clientes.idclientes = reservaciones.id_cliente
inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = reservaciones.id_tiempo_de_juego
inner join cancha on cancha.idcancha = tiempo_de_juego.id_cancha

where date(tiempo_de_juego.fecha_de_juego)=curdate() 
