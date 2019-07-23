create view poscopia.vistaVentaDeUsuarios as
select usuario.nombreUsuario, cliente.nombre, venta.fecha, venta.cantidad, producto.nombreProducto,
venta.precioProducto, venta.totalVenta, formapago.nombrepago, tipopago.nombrePag


from poscopia.bitacora inner join poscopia.usuario on usuario.idUsuario = bitacora.usuario
inner join poscopia.detalleventa on detalleventa.idDetalleVenta= bitacora.detallVnt
inner join poscopia.venta on venta.idVenta=detalleventa.venta
inner join poscopia.cliente on cliente.idCliente=venta.cliente
inner join poscopia.producto on producto.idProducto=venta.producto
inner join poscopia.formapago on formapago.idformapago=detalleventa.formaPago
inner join poscopia.tipopago on tipopago.idTipoPago=detalleventa.TipoPago