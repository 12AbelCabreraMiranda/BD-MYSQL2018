create view poscopia.vistacompranuevo as
select producto.nombreProducto, producto.cantidad, producto.precioProducto, compra.monto, compra.pvcredito, compra.pvmayorista, compra.fecha, producto.fechaVencimiento,
proveedores.nombreProveedor, tipopago.nombrePag as dinero, formapago.nombrepago as tipocompra, detallecompra.factura
from poscopia.compra inner join poscopia.detallecompra on compra.idcompra = detallecompra.compra
inner join poscopia.producto on compra.producto = producto.idProducto
inner join poscopia.proveedores on proveedores.idProveedores=compra.proveedor
inner join poscopia.tipopago on tipopago.idTipoPago=detallecompra.tipoPago
inner join poscopia.formapago on formapago.idformapago=detallecompra.formaPago;


select *
from poscopia.compra inner join poscopia.detallecompra on compra.idcompra = detallecompra.compra
inner join poscopia.producto on compra.producto = producto.idProducto
inner join poscopia.proveedores on proveedores.idProveedores=compra.proveedor
inner join poscopia.tipopago on tipopago.idTipoPago=detallecompra.tipoPago
inner join poscopia.formapago on formapago.idformapago=detallecompra.formaPago;