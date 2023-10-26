-- Usar a base de dados
USE exerciciospratico;
SHOW TABLES;

-- -------------------- ATIVIDADES DO DIA 19/10 -------------------
----- QUESTÃO 01 -----
DESC tipo_cliente;

CREATE TABLE tipo_cliente(
	id_tipo INT PRIMARY KEY auto_increment,
	tipo VARCHAR(50)
);


----- QUESTÃO 02 -----
SELECT * FROM Clientes;
DESC clientes;

ALTER TABLE clientes
	ADD COLUMN tipo_cliente INT;

ALTER TABLE clientes ADD CONSTRAINT fk_tipo_cliente
	FOREIGN KEY (tipo_cliente)
	REFERENCES tipo_cliente(id_tipo)
	ON DELETE CASCADE;

----- QUESTÃO 03 -----
DESC tipo_cliente;
SELECT * FROM tipo_cliente;

INSERT INTO tipo_cliente(tipo) VALUES ('pessoa física'), ('pessoa jurídica');

----- QUESTÃO 04 -----
SELECT Nome, ClienteID, tipo_cliente FROM clientes
	WHERE Nome LIKE '%a';
    
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 1;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 4;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 5;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 6;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 8;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 11;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 12;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 13;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 14;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 16;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 18;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 21;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 22;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 24;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 25;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 26;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 29;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 30;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 31;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 33;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 35;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 36;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 39;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 40;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 42;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 44;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 47;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 48;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 50;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 51;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 52;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 56;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 57;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 59;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 62;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 63;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 64;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 66;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 67;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 71;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 72;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 73;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 74;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 76;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 79;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 80;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 81;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 82;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 84;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 86;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 88;
UPDATE clientes SET tipo_cliente = 1 WHERE clienteID = 90;


SELECT Nome, ClienteID, tipo_cliente FROM clientes
WHERE Nome LIKE '%o';

UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 15;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 27;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 37;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 45;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 54;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 61;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 69;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 77;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 85;
UPDATE clientes SET tipo_cliente = 2 WHERE clienteID = 89;

	----- QUESTÃO 05 -----
SELECT ClienteID, Nome, Email, Telefone FROM Clientes;

	----- QUESTÃO 06 -----
SELECT Nome, tipo_cliente FROM Clientes;

	----- QUESTÃO 07 -----
SELECT Nome, tipo_cliente FROM Clientes
	WHERE tipo_cliente is null;

	----- QUESTÃO 08 -----
SELECT Clientes.Nome, tipo_cliente.tipo
	FROM Clientes
	INNER JOIN tipo_cliente
	ON Clientes.tipo_cliente = tipo_cliente.id_tipo;

	----- QUESTÃO 09 -----
SELECT * FROM itenspedido;
SELECT * FROM pedidos;
SELECT * FROM produtos;
INSERT INTO Pedidos (DataPedido, ValorTotal, ClienteID)
	VALUES ('2023-10-17', '250.39', 5), ('2023-10-17', '125.14', 25), ('2023-10-17', '87.12', 20),
			('2023-09-12', 459.10, 9), ('2023-09-12', 897.59, 43),
			('2023-10-15', 1259.25, 10), ('2023-10-15', 1479.25, 40), ('2023-10-15', 1245.98, 89);

INSERT INTO itenspedido(PedidoID, ProdutoID, Quantidade)
	VALUES (44, 10, 2), (44, 9, 1), (44, 7,1),
			(45, 4, 1), (45, 1, 2), (45, 10,1),
			(46, 5, 1), (46, 4, 1), (46, 6, 2),
			(47, 1, 1), (47, 2, 1), (47, 3, 1), (47, 4, 2), (47, 5, 1), (47, 6, 2),
			(48, 1, 1), (48, 2, 1), (48, 3, 1), (48, 4, 2), (48, 5, 1), (48, 6, 2),
			(49, 1, 1), (49, 2, 1), (49, 3, 1), (49, 4, 2), (49, 5, 1), (49, 6, 2), (49, 5, 1), (49, 4, 1), (49, 6, 2), (49, 5, 1),
			(50, 5, 1), (50, 4, 1), (50, 6, 2),(50, 5, 1), (50, 4, 1), (50, 6, 2), (50, 5, 1), (50, 4, 1), (50, 6, 2),(50, 5, 1),
			(51, 1, 1), (51, 2, 1), (51, 3, 1), (51, 4, 2), (51, 5, 1), (51, 6, 2), (51, 5, 1), (51, 4, 1), (51, 6, 2), (51, 5, 1);

SELECT itenspedido.PedidoID, Pedidos.DataPedido, itenspedido.ProdutoID, Produtos.NomeProduto, itenspedido.Quantidade,  pedidos.ValorTotal, Clientes.Nome
	FROM itenspedido
	INNER JOIN produtos
	ON itenspedido.produtoID = produtos.produtoID
	INNER JOIN pedidos
	ON  itenspedido.pedidoID = pedidos.pedidoID
	INNER JOIN Clientes
	ON clientes.ClienteID = pedidos.ClienteID
	ORDER BY itenspedido.pedidoID ASC;

	----- QUESTÃO 10 -----
SELECT pedidoID, DataPedido, ValorTotal
	FROM pedidos
    WHERE DataPedido BETWEEN '2023-10-01' AND '2023-10-31';

	----- QUESTÃO 11 -----
SELECT SUM(ValorTotal) AS 'TOTAL_DOS_PEDIDOS_(R$)'
	FROM pedidos;

	----- QUESTÃO 12 -----
SELECT pedidos.DataPedido AS 'DATA_DO_PEDIDO', clientes.Nome AS 'CLIENTE'
	FROM pedidos
    INNER JOIN clientes
    ON pedidos.ClienteID = clientes.clienteID
    WHERE DataPedido = '2023-10-17';
    
	----- QUESTÃO 13 -----
SELECT pedidos.ClienteID, Clientes.Nome, SUM(ValorTotal) AS 'COMPRAS_TOTAL'
	FROM pedidos
    INNER JOIN Clientes
    ON pedidos.ClienteID = Clientes.ClienteID
    GROUP BY (pedidos.ClienteID)
	ORDER BY SUM(ValorTotal) DESC;

	----- QUESTÃO 14 -----
 SELECT 
 FROM
 LEFT JOIN
 ON;
 
 SELECT ProdutoID, SUM(Quantidade)
	FROM itenspedido
		GROUP BY ProdutoID;
    -- ORDER BY ProdutoID DESC;
 
/* SELECT 
	FROM
    LEFT JOIN
    ON */
    
    SELECT * FROM pedidos;
    SELECT DISTINCT ClienteID/*, pedidoID*/, COUNT(ClienteID)
		FROM pedidos;
    
 
	----- QUESTÃO 15 -----
SELECT itenspedido.PedidoID, Itenspedido.ProdutoID, SUM(itenspedido.Quantidade), Clientes.Nome
	FROM itenspedido
    INNER JOIN Pedidos
    ON itenspedido.PedidoID = pedidos.PedidoID
    INNER JOIN Clientes
    ON Pedidos.ClienteID = Clientes.CLienteID
    GROUP BY SUM(itenspedido.Quantidade)
	ORDER BY pedidoID ASC;



SELECT ProdutoID, SUM(Quantidade)
	FROM itenspedido
    GROUP BY produtoID
    ORDER BY SUM(Quantidade) DESC;
    -- WHERE ProdutoID = 10;
    -- WHERE ClienteID = 13;
    
 SELECT ProdutoID, SUM(Quantidade)
	FROM itenspedido
    GROUP BY produtoID
    ORDER BY SUM(Quantidade) DESC;   


SELECT * FROM itenspedido;
SELECT PedidoID, Clientes.Nome
	FROM pedidos
    INNER JOIN Clientes
    ON pedidos.ClienteID = clientes.ClienteID;

DELETE FROM Pedidos
	WHERE 	PedidoID = 46;

SHOW TABLES;
DESC clientes;
DESC pedidos;
DESC itenspedido;
DESC produtos;
ALTER TABLE Clientes CHANGE tipo_cliente fk_tipo_cliente INT;

SELECT @@autocommit;
SET autocommit = 1;

