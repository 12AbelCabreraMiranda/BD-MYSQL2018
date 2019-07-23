-- select *from pagos
-- select *from tiempo_de_juego

create view reserva_meses as
select   sum(pagos.tiempo_pago)as total_ingreso, MONTHNAME(tiempo_de_juego.fecha_de_juego)as mes, count(tiempo_de_juego.fecha_de_juego)as cant
from pagos
inner join tiempo_de_juego on tiempo_de_juego.idtiempo_de_juego = pagos.id_tiempo_juego 
-- where MONTHNAME(tiempo_de_juego.fecha_de_juego)='may'
group by MONTHNAME(tiempo_de_juego.fecha_de_juego)
order by tiempo_de_juego.fecha_de_juego
-- -------------------------------------------------------------------

-- FECHAS: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_monthname

-- January
-- February
-- March
-- April
-- May
-- June
-- July
-- August
-- September
-- October
-- November
-- December