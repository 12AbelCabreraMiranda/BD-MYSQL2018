create view poscopia.vistaproveedor as
select proveedores.nombreProveedor, proveedores.nit, proveedores.direccion, proveedores.telefono
from poscopia.proveedores 