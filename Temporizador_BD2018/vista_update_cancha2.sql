create view vista_update_cancha2 as

select tiempo_de_juego.idtiempo_de_juego, clientes.nombre as Cliente, tiempo_de_juego.cant_de_hora_a_jugar, 
tiempo_de_juego.tiempo_inicio, tiempo_de_juego.fecha_de_juego,
estado_reserva.nombre_estado

from reservaciones
inner join clientes on clientes.idclientes = reservaciones.id_cliente
inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = reservaciones.id_tiempo_de_juego
inner join cancha on cancha.idcancha = tiempo_de_juego.id_cancha
inner join estado_reserva on estado_reserva.idestado_reserva = reservaciones.id_estado_reserva

 where  tamanio_cancha like '%Cancha 2%' 
-- where date(tiempo_de_juego.fecha_de_juego)=curdate() && tamanio_cancha like '%Cancha 1%' 
			 && nombre_estado like '%RESERVADO%'
order by tiempo_de_juego.fecha_de_juego, tiempo_de_juego.tiempo_inicio asc