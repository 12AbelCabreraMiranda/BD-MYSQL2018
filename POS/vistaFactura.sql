create view poscopia.factura as
select detalleventa.idDetalleVenta, venta.fecha, venta.cantidad, producto.nombreProducto, venta.precioProducto, 
cliente.nombre

from poscopia.venta 
inner join poscopia.detalleventa on venta.idVenta=detalleventa.venta
inner join poscopia.producto on producto.idProducto=venta.producto
inner join poscopia.cliente on cliente.idCliente=venta.cliente;