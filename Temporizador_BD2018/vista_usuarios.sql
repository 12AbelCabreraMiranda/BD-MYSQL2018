create view vista_usuarios as
select tipo_usuario.nombre_tipo_usuario, empleados.nombre, usuarios.nombre_usuario, 
		usuarios.password
	   
from usuarios 
inner join empleados on empleados.idempleados = usuarios.id_empleado
inner join tipo_usuario on tipo_usuario.idtipo_usuario = usuarios.id_tipo_usuario