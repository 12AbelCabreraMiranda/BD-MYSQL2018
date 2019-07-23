select clientes.nombre, tiempo_de_juego.tiempo_inicio as inicio_de_juego,
		tiempo_de_juego.tiempo_final as final_del_juego, tiempo_de_juego.total_tiempo_jugado as horas_jugados, 
        tiempo_de_juego.fecha_de_juego as fecha_jugado,cancha.tamanio_cancha as cancha_utilizado, estado_reserva.nombre_estado as estado,
        servicio.nombre_servicios as nombre_de_juego -- dias_servicios.nombre_dias_servicios as dia_jugado

from reservaciones
inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = reservaciones.id_tiempo_de_juego
inner join cancha on cancha.idcancha = tiempo_de_juego.id_cancha
inner join clientes on clientes.idclientes = reservaciones.id_cliente
inner join estado_reserva on estado_reserva.idestado_reserva = reservaciones.id_estado_reserva
inner join servicio on servicio.idservicio = reservaciones.id_servicio

-- inner join detalle_servicio on detalle_servicio.iddetalle_servicio = reservaciones.id_detalle_servicios
-- inner join servicio on servicio.idservicio = detalle_servicio.id_servicio
-- inner join dias_servicios on dias_servicios.iddias_servicios = detalle_servicio.id_dias_servicios