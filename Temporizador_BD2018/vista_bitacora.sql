create view vista_bitacora as
select empleados.nombre,empleados.apellido, 
		pagos.tiempo_pago, pagos.fecha_cobro, pagos.hora_cobro

from bitacora
inner join usuarios on usuarios.idusuarios=bitacora.id_usuario
inner join pagos on pagos.idpagos = bitacora.id_pago
inner join empleados on empleados.idempleados = usuarios.id_empleado