alter view vista_juegos_Cancha2 as

select cancha.tamanio_cancha, clientes.nombre as Cliente, tiempo_de_juego.cant_de_hora_a_jugar, tiempo_de_juego.tiempo_inicio
as inicio_de_juego, tiempo_de_juego.fecha_de_juego,
estado_reserva.nombre_estado

from reservaciones
inner join clientes on clientes.idclientes = reservaciones.id_cliente
inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = reservaciones.id_tiempo_de_juego
inner join cancha on cancha.idcancha = tiempo_de_juego.id_cancha
inner join estado_reserva on estado_reserva.idestado_reserva = reservaciones.id_estado_reserva

where date(tiempo_de_juego.fecha_de_juego)=curdate() && tamanio_cancha like '%Cancha 2%'
			&& nombre_estado like'%RESERVADO%'





SELECT DATE_FORMAT(now( ), "%H" )
SELECT  DATE_FORMAT( NOW(), '%H');










-- select (now())
-- select curdate() as fecha;
-- select *from vista_juegos_reservados