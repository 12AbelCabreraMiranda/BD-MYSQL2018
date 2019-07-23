alter view vista_reserva_general as
select estado_reserva.nombre_estado, tiempo_de_juego.tiempo_inicio, tiempo_de_juego.tiempo_final,tiempo_de_juego.fecha_de_juego,
clientes.nombre, reservaciones.fecha_d_reserva, reservaciones.hora_d_reserva, servicio.nombre_servicios,
tiempo_de_juego.cant_de_hora_a_jugar,cancha.tamanio_cancha
from reservaciones

inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = reservaciones.id_tiempo_de_juego 
inner join estado_reserva on estado_reserva.idestado_reserva = reservaciones.id_estado_reserva
inner join clientes on clientes.idclientes = reservaciones.id_cliente
inner join servicio on servicio.idservicio = reservaciones. id_servicio
inner join cancha on cancha.idcancha = tiempo_de_juego.id_cancha

ORDER BY fecha_de_juego asc