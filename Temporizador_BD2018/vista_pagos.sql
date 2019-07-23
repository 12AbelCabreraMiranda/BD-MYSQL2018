select pagos.fecha_cobro, pagos.hora_cobro, tiempo_de_juego.fecha_de_juego,  tiempo.tiempo,
	tiempo.valor_tiempo


from pagos 
inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = pagos.id_tiempo_juego
inner join tiempo on tiempo.idtiempo = pagos.id_tiempo_pago_total


