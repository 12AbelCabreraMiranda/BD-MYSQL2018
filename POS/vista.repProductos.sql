create view pos.repproductos as
select producto.codigoProducto, producto.nombreProducto, producto.precioProducto, producto.cantidad, producto.fechaVencimiento
from pos.producto 