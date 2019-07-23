create view pos.repclientes as
select cliente.nit, cliente.nombre, cliente.apellido, cliente.direccion
from pos.cliente 