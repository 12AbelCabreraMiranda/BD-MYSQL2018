create view poscopia.vistaproductos as
select producto.idProducto, producto.nombreProducto,  producto.precioProducto, 
  proveedores.nombreProveedor 


from poscopia.producto

inner join poscopia.proveedores on proveedores.idProveedores=producto.proveedores

