create trigger modificar_tiempo_juego after update
on tiempo_de_juego
for each row
insert into auditoria_tiempo_juego(idtiempo_de_juego, tiempo_inicio, tiempo_inicio_sistema, tiempo_final, total_tiempo_jugado)
values(old.idtiempo_de_juego, old.tiempo_inicio,NEW.tiempo_inicio, new.tiempo_final, old.total_tiempo_jugado);

update tiempo_de_juego set tiempo_inicio='14:03', tiempo_final='15:03' where idtiempo_de_juego=10;

update tiempo_de_juego set tiempo_final='14:15' where idtiempo_de_juego=9
