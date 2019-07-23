create view poscopia.vistacompra as
select producto.nombreProducto, producto.cantidad, producto.precioProducto, 
compra.monto, compra.fecha, producto.fechavencimiento, proveedores.nombreProveedor, 
formapago.nombrepago, tipopago.nombrePag,detallecompra.factura

from poscopia.compra
inner join poscopia.detallecompra on compra.idcompra=detallecompra.compra
inner join poscopia.tipopago on tipopago.idTipoPago=detallecompra.tipoPago
inner join poscopia.formapago on formapago.idformapago=detallecompra.formaPago

inner join poscopia.proveedores on proveedores.idProveedores=compra.proveedor
inner join poscopia.producto on proveedores.idProveedores=producto.proveedores;


