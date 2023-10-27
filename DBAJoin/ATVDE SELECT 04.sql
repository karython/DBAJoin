/*---9---*/
SELECT pedidoid, datapedido, valortotal
FROM pedidos
WHERE datapedido BETWEEN NOW() - INTERVAL 20 DAY AND NOW();

select*from pedidos;

/*---10---*/

select clientes.clienteid, clientes.nome,pedidos.pedidoid
from clientes
left join pedidos
on clientes.clienteid = pedidos.clienteid
where pedidoid is null;

/*---11---*/
select * from pedidos;

select clientes.clienteid,clientes.nome, pedidos.pedidoid, pedidos.valortotal as PedidosMaioresQue200R$
from clientes
left join pedidos
on clientes.clienteid = pedidos.clienteid
where valortotal >200.00;

/*---12---*/

select*from produtos;

select * from pedidos;

select pedidos.pedidoid, produtos.produtoid
as itensvendidos
from pedidos
left join produtos
on pedidos.pedidoid = produtos.produtoid
where produtoid is not null;

/*---13---*/


select pedidoid,datapedido,valortotal
from pedidos
where month(datapedido) = 09 ;

/*---14---*/

select * from produtos;

SELECT clientes.nome , COUNT(pedidos.pedidoid) AS ClientesComMaiorQntdeDePedidos
from clientes
join pedidos
on clientes.clienteid = pedidos.clienteid
group by clientes.clienteid
having COUNT(pedidos.pedidoid) > 3
order by ClientesComMaiorQntdeDePedidos asc;

/*---15---*/

select clientes.clienteid,clientes.nome,pedidos.valortotal, sum(pedidos.valortotal) as somadascompras
from clientes
left join pedidos
on clientes.clienteid = pedidos.clienteid
group by clientes.nome
having count(pedidos.valortotal);

/*---16---*/

select clientes.clienteid, clientes.nome, produtos.preco
from clientes
left join produtos
on clientes.clienteid = produtos.produtoid
where preco >18
order by produtos.preco asc;

/*---17---*/

SELECT pedidoid, datapedido, valortotal
FROM pedidos
WHERE datapedido BETWEEN NOW() - INTERVAL 20 DAY AND NOW();
