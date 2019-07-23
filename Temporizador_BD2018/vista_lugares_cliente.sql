alter view lugares_cliente as
select  direccion, count(direccion)as cantidad_de_clientes from clientes 
group by direccion
order by cantidad_de_clientes desc