
select  time(curtime()-time(tiempo_inicio)) from tiempo_de_juego
where idtiempo_de_juego=12


SELECT DATE_FORMAT(curtime( ), "%H:%i" )-time(tiempo_inicio) from tiempo_de_juego
where idtiempo_de_juego=12

