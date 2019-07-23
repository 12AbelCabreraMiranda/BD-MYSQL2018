create view poscopia.vistausuarios as
select usuario.nombreUsuario, usuario.contrasenia, niveles.nombrePuesto
from poscopia.usuario inner join poscopia.niveles on usuario.niveles=niveles.idNiveles