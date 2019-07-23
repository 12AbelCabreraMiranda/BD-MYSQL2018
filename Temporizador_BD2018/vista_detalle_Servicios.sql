create view vista_detalle_servicios as
select servicio.nombre_servicios, dias_servicios.nombre_dias_servicios

from detalle_servicio
inner join servicio on servicio.idservicio = detalle_servicio.id_servicio
inner join dias_servicios on dias_servicios.iddias_servicios = detalle_servicio.id_dias_servicios