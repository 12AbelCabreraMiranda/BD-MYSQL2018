-- select *from reservaciones
-- select *from tiempo_de_juego

select clientes.nombre, tiempo_de_juego.fecha_de_juego, tiempo_inicio, tiempo_de_juego.total_tiempo_jugado

from reservaciones
inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = reservaciones.id_tiempo_de_juego
inner join clientes on clientes.idclientes = reservaciones.id_cliente

where date(tiempo_de_juego.fecha_de_juego)<=curdate() -- and <=curtime() agregar menor que la hora tambien




