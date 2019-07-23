create view POS.factura as
SELECT DetalleVenta.registro, DetalleVenta.idDetalleVenta, Venta.fecha FROM POS.Venta
inner join POS.DetalleVenta on Venta.idVenta=DetalleVenta.venta;

select * from POS.factura where registro='';