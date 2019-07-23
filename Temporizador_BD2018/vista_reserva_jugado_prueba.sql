alter view vista_calendario_de_juego as

select clientes.nombre as Cliente, tiempo_de_juego.fecha_de_juego, tiempo_de_juego.tiempo_inicio
as inicio_de_juego, cancha.tamanio_cancha, estado_reserva.nombre_estado

from reservaciones
inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = reservaciones.id_tiempo_de_juego
inner join clientes on clientes.idclientes = reservaciones.id_cliente
inner join cancha on cancha.idcancha = tiempo_de_juego.id_cancha
inner join estado_reserva on estado_reserva.idestado_reserva = reservaciones.id_estado_reserva

where date(tiempo_de_juego.fecha_de_juego)>=curdate() && nombre_estado like '%RESERVADO%'
order by tiempo_de_juego.fecha_de_juego, tiempo_de_juego.tiempo_inicio asc

