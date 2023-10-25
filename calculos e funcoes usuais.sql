use gerenciador;

select * from pedidos;
select * from clientes;
select * from ItensPedidos;

#1.	Escreva uma busca que mostre a data atual.

	select pedidoid, current_date() from pedidos;

#2.	Escreva uma busca que mostre o ID do pedido, Data do pedido e o valor total com aumento de 10%.

	select PedidoID, DataPedido, ValorTotal, ValorTotal*1.1 as valorcom10porcento from pedidos;
	select PedidoID, DataPedido, ValorTotal, round(ValorTotal*1.1,2) as valorcom10porcento from pedidos;

#3.	Escreva uma busca igual a anterior, mas que mostre também uma coluna com o valor que foi acrescido.

	select PedidoID, DataPedido, ValorTotal, ValorTotal*1.1 as valorcom10porcento, ValorTotal*.1 as valoracrescido from pedidos;
	select PedidoID, DataPedido, ValorTotal, round(ValorTotal*1.1,2) as valorcom10porcento, ValorTotal*.1 as valoracrescido from pedidos;
    
#4.	Escreva uma busca que mostre o nome do cliente em letras maiúsculas e e-mail com letras minúsculas.

	select upper(Nome), lower(Email) from clientes;

#5.	Faça uma busca que mostre as três primeiras letras dos nomes dos clientes e seu e-mail.

	select substring(nome,1,3), email from clientes;

#6.	Faça uma busca que mostre a quantidade de dias entre a data do pedido e a data de hoje.

	select*, datediff(current_date, datapedido) as diferenca from pedidos;

#7.	Faça uma consulta igual a anterior, mas mostre outra coluna que acrescente 15 dias da data do pedido.

	select *, 
	datediff(current_date, datapedido) as diferenca,
	date_add(datapedido, interval 15 day) as quantidade
	from pedidos;

