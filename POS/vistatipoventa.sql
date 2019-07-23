create view poscopia.vistatipoventas as
select producto.idProducto, producto.nombreProducto, producto.cantidad, compra.monto, compra.pvcredito,
compra.pvmayorista

from poscopia.producto
inner join poscopia.compra on producto.idProducto=compra.producto
