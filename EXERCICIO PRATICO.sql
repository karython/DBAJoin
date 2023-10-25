-- Criar a base de dados
CREATE DATABASE Gerenciador;

-- Usar a base de dados
USE Gerenciador;

-- Criar a tabela 'Clientes'
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(15)
);

-- Criar a tabela 'Pedidos'
CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Criar a tabela 'Produtos'
CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeProduto VARCHAR(50) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL
);

-- Criar a tabela 'ItensPedido' para representar a relação entre 'Pedidos' e 'Produtos'
CREATE TABLE ItensPedido (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);


select * from clientes;
select * from produtos;
select * from pedidos;
select * from ItensPedido;


INSERT INTO Clientes (Nome, Email, Telefone) VALUES
    ('João Silva', 'joao@email.com', '(11) 1234-5678'),
    ('Maria Santos', 'maria@email.com', '(22) 9876-5432'),
    ('Pedro Alves', 'pedro@email.com', '(33) 8765-4321'),
    ('Ana Pereira', 'ana@email.com', '(44) 2345-6789'),
    ('Carlos Oliveira', 'carlos@email.com', '(55) 7654-3210'),
    ('Laura Souza', 'laura@email.com', '(66) 5432-1098'),
    ('Marcos Santos', 'marcos@email.com', '(77) 3210-9876'),
    ('Isabela Ferreira', 'isabela@email.com', '(88) 2109-8765'),
    ('Rafael Gonçalves', 'rafael@email.com', '(99) 1098-7654'),
    ('Sofia Rodrigues', 'sofia@email.com', '(10) 9876-5432'),
    ('Lucas Costa', 'lucas@email.com', '(11) 8765-4321'),
    ('Gabriela Lima', 'gabriela@email.com', '(12) 7654-3210'),
    ('Enzo Pereira', 'enzo@email.com', '(13) 6543-2109'),
    ('Valentina Almeida', 'valentina@email.com', '(14) 5432-1098'),
    ('Luiz Carvalho', 'luiz@email.com', '(15) 4321-0987'),
    ('Mariana Ferreira', 'mariana@email.com', '(16) 3210-9876'),
    ('Leonardo Martins', 'leonardo@email.com', '(17) 2109-8765'),
    ('Sophia Souza', 'sophia@email.com', '(18) 1098-7654'),
    ('Mateus Rodrigues', 'mateus@email.com', '(19) 0987-6543'),
    ('Helena Gonçalves', 'helena@email.com', '(20) 9876-5432'),
    ('Gustavo Oliveira', 'gustavo@email.com', '(21) 8765-4321'),
    ('Lívia Lima', 'livia@email.com', '(22) 7654-3210'),
    ('Lucas Santos', 'lucas2@email.com', '(23) 6543-2109'),
    ('Lara Ferreira', 'lara@email.com', '(24) 5432-1098'),
    ('João Pereira', 'joao2@email.com', '(25) 4321-0987'),
    ('Julia Almeida', 'julia@email.com', '(26) 3210-9876'),
    ('Eduardo Carvalho', 'eduardo@email.com', '(27) 2109-8765'),
    ('Isabel Martins', 'isabel2@email.com', '(28) 1098-7654'),
    ('Bernardo Souza', 'bernardo@email.com', '(29) 0987-6543'),
    ('Valentina Oliveira', 'valentina2@email.com', '(30) 9876-5432'),
    ('Henrique Lima', 'henrique@email.com', '(31) 8765-4321'),
    ('Clara Santos', 'clara@email.com', '(32) 7654-3210'),
    ('Samuel Ferreira', 'samuel@email.com', '(33) 6543-2109'),
    ('Beatriz Gonçalves', 'beatriz@email.com', '(34) 5432-1098'),
    ('Luan Pereira', 'luan@email.com', '(35) 4321-0987'),
    ('Ana Almeida', 'ana2@email.com', '(36) 3210-9876'),
    ('Cauã Carvalho', 'caua@email.com', '(37) 2109-8765'),
    ('Yasmin Martins', 'yasmin@email.com', '(38) 1098-7654'),
    ('Murilo Souza', 'murilo@email.com', '(39) 0987-6543'),
    ('Mariana Lima', 'mariana2@email.com', '(40) 9876-5432'),
    ('Lucca Santos', 'lucca@email.com', '(41) 8765-4321'),
    ('Lavínia Ferreira', 'lavinia@email.com', '(42) 7654-3210'),
    ('Nicolas Gonçalves', 'nicolas@email.com', '(43) 6543-2109'),
    ('Heloísa Almeida', 'heloisa@email.com', '(44) 5432-1098'),
    ('Breno Carvalho', 'breno@email.com', '(45) 4321-0987'),
    ('Laura Martins', 'laura2@email.com', '(46) 3210-9876'),
    ('Vinicius Souza', 'vinicius@email.com', '(47) 2109-8765'),
    ('Maria Clara Lima', 'mariaclara@email.com', '(48) 1098-7654'),
    ('Calebe Santos', 'calebe@email.com', '(49) 0987-6543'),
    ('Letícia Almeida', 'leticia@email.com', '(50) 9876-5432'),
    ('Erick Lima', 'erick@email.com', '(51) 8765-4321'),
    ('Melissa Ferreira', 'melissa@email.com', '(52) 7654-3210'),
    ('Guilherme Gonçalves', 'guilherme@email.com', '(53) 6543-2109'),
    ('Bianca Carvalho', 'bianca@email.com', '(54) 5432-1098'),
    ('Felipe Martins', 'felipe@email.com', '(55) 4321-0987'),
    ('Alice Souza', 'alice@email.com', '(56) 3210-9876'),
    ('Enzo Almeida', 'enzo2@email.com', '(57) 2109-8765'),
    ('Laís Santos', 'lais@email.com', '(58) 1098-7654'),
    ('Arthur Lima', 'arthur@email.com', '(59) 0987-6543'),
    ('Sophie Gonçalves', 'sophie@email.com', '(60) 9876-5432'),
    ('Joaquim Carvalho', 'joaquim@email.com', '(61) 8765-4321'),
    ('Carolina Ferreira', 'carolina@email.com', '(62) 7654-3210'),
    ('Davi Oliveira', 'davi@email.com', '(63) 6543-2109'),
    ('Elisa Almeida', 'elisa@email.com', '(64) 5432-1098'),
    ('Lorenzo Martins', 'lorenzo@email.com', '(65) 4321-0987'),
    ('Isis Souza', 'isis@email.com', '(66) 3210-9876'),
    ('Giovanni Lima', 'giovanni@email.com', '(67) 2109-8765'),
    ('Clara Gonçalves', 'clara2@email.com', '(68) 1098-7654'),
    ('Luiz Miguel Carvalho', 'luizmiguel@email.com', '(69) 0987-6543'),
    ('Nina Santos', 'nina@email.com', '(70) 9876-5432'),
    ('Lucas Almeida', 'lucas3@email.com', '(71) 8765-4321'),
    ('Lívia Ferreira', 'livia2@email.com', '(72) 7654-3210'),
    ('Eduarda Oliveira', 'eduarda@email.com', '(73) 6543-2109'),
    ('Théo Lima', 'theo@email.com', '(74) 5432-1098'),
    ('Cecília Martins', 'cecilia@email.com', '(75) 4321-0987'),
    ('Breno Souza', 'breno2@email.com', '(76) 3210-9876'),
    ('Helena Carvalho', 'helena2@email.com', '(77) 2109-8765'),
    ('Matheus Gonçalves', 'matheus@email.com', '(78) 1098-7654'),
    ('Luana Almeida', 'luana@email.com', '(79) 0987-6543'),
    ('Joaquim Lima', 'joaquim2@email.com', '(80) 9876-5432'),
    ('Raquel Ferreira', 'raquel@email.com', '(81) 8765-4321'),
    ('Emanuel Oliveira', 'emanuel@email.com', '(82) 7654-3210'),
    ('Carla Martins', 'carla@email.com', '(83) 6543-2109'),
    ('Leonardo Souza', 'leonardo2@email.com', '(84) 5432-1098'),
    ('Catarina Carvalho', 'catarina@email.com', '(85) 4321-0987'),
    ('Ana Beatriz Lima', 'anabeatriz@email.com', '(86) 3210-9876'),
    ('Antônio Gonçalves', 'antonio@email.com', '(87) 2109-8765'),
    ('Lara Almeida', 'lara2@email.com', '(88) 1098-7654'),
    ('Luiz Gustavo Carvalho', 'luizgustavo@email.com', '(89) 0987-6543'),
    ('Estela Ferreira', 'estela@email.com', '(90) 9876-5432');


INSERT INTO Produtos (NomeProduto, Preco) VALUES
    ('Produto 1', 10.99),
    ('Produto 2', 15.50),
    ('Produto 3', 20.75),
    ('Produto 4', 7.99),
    ('Produto 5', 12.25),
    ('Produto 6', 5.50),
    ('Produto 7', 30.99),
    ('Produto 8', 8.75),
    ('Produto 9', 18.50),
    ('Produto 10', 25.99);



INSERT INTO Pedidos (ClienteID, DataPedido, ValorTotal) VALUES
    (1, '2023-09-01', 150.00),
    (1, '2023-09-02', 80.25),
    (1, '2023-09-05', 220.50),
    (2, '2023-09-03', 65.75),
    (2, '2023-09-04', 40.00),
    (3, '2023-09-06', 180.30),
    (3, '2023-09-07', 95.00),
    (3, '2023-09-08', 135.75),
    (4, '2023-09-10', 70.25),
    (4, '2023-09-12', 120.00),
    (4, '2023-09-13', 45.50),
    (5, '2023-09-15', 260.75),
    (5, '2023-09-16', 92.80),
    (6, '2023-09-17', 170.00),
    (6, '2023-09-18', 110.25),
    (7, '2023-09-19', 75.50),
    (7, '2023-09-20', 130.00),
    (8, '2023-09-22', 45.75),
    (8, '2023-09-25', 80.50),
    (9, '2023-09-27', 210.30),
    (9, '2023-09-28', 65.75),
    (10, '2023-09-29', 105.00),
    (10, '2023-09-30', 40.25),
    (11, '2023-10-01', 175.50),
    (11, '2023-10-02', 55.75),
    (12, '2023-10-04', 120.80),
    (12, '2023-10-05', 90.25),
    (13, '2023-10-07', 200.50),
    (13, '2023-10-08', 30.75),
    (14, '2023-10-09', 140.00),
    (14, '2023-10-10', 95.50),
    (15, '2023-10-12', 180.25),
    (15, '2023-10-15', 75.75),
    (16, '2023-10-16', 220.30),
    (16, '2023-10-18', 50.50),
    (17, '2023-10-19', 260.75),
    (17, '2023-10-20', 90.25),
    (18, '2023-10-22', 120.00),
    (18, '2023-10-23', 60.75),
    (19, '2023-10-25', 175.50),
    (19, '2023-10-26', 45.75),
    (20, '2023-10-28', 130.80),
    (20, '2023-10-29', 110.25);


INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade) VALUES
    (1, 1, 2),
    (1, 3, 1),
    (2, 2, 3),
    (3, 4, 4),
    (3, 5, 2),
    (3, 6, 1),
    (4, 7, 3),
    (5, 8, 1),
    (5, 9, 2),
    (6, 10, 5),
    (6, 1, 2),
    (7, 3, 3),
    (7, 5, 2),
    (8, 7, 1),
    (8, 9, 4),
    (9, 2, 2),
    (9, 4, 3),
    (9, 6, 2),
    (10, 8, 1),
    (10, 10, 2);


#Lista de Exercícios 1

/*EXERCÍCIO 1 -  1.	Selecione todos os clientes em ordem alfabética crescente pelo nome.*/

SELECT *
FROM Clientes
ORDER BY Nome
ASC;


/*EXERCÍCIO 2 -  2.	Selecione todos os produtos com preço superior a $10, ordenados por preço decrescente, limitando o resultado a 5 produtos.*/

SELECT  *
FROM  Produtos
WHERE Preco >= 10
ORDER BY Preco
DESC
LIMIT 5;

/*EXERCÍCIO 3 -  3.	Selecione os clientes com pedidos entre 120 a 190 reais, mostre qual menor valor pedido.*/

SELECT Clientes.Nome, Pedidos.ValorTotal
FROM Clientes
JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
WHERE ValorTotal BETWEEN 120 AND 190
ORDER BY ValorTotal
ASC
LIMIT 1;

/*EXERCÍCIO 4 -  4.	Selecione todos os pedidos com os nomes dos clientes.*/

SELECT Clientes.Nome,  Pedidos.DataPedido
FROM  Pedidos
JOIN Clientes
ON Clientes.ClienteID = Pedidos.ClienteID
ORDER BY Nome;

/*EXERCÍCIO 5 -  5.	Mostre o ID do pedido, valor, data, ID do cliente e o nome do cliente.*/

SELECT  Pedidos.PedidoID, Pedidos.ValorTotal, Pedidos.DataPedido, Clientes.ClienteId, Clientes.Nome
FROM  Pedidos
JOIN Clientes
ON Clientes.ClienteID = Pedidos.ClienteID
ORDER BY Nome;


/*EXERCÍCIO 6 -  6.	Mostre todos os Clientes com Pedidos com um valor acima de $200.*/

SELECT  Pedidos.PedidoID, Pedidos.ValorTotal, Pedidos.DataPedido, Clientes.ClienteId, Clientes.Nome
FROM  Pedidos
JOIN Clientes
ON Clientes.ClienteID = Pedidos.ClienteID
WHERE ValorTotal >= 200
ORDER BY ValorTotal;

/*EXERCÍCIO 7 -  7.	Organize de Forma crescente alfabética o nome dos clientes selecionados acima.*/

SELECT  Pedidos.PedidoID, Pedidos.ValorTotal, Pedidos.DataPedido, Clientes.ClienteId, Clientes.Nome
FROM  Pedidos
JOIN Clientes
ON Clientes.ClienteID = Pedidos.ClienteID
WHERE ValorTotal >= 200
ORDER BY Nome
ASC;

/*EXERCÍCIO 8 -  8.	Selecione todos os pedidos feitos entre 27 de setembro de 2023 e 08 de outubro de 2023 com a data de forma crescente.*/

SELECT *
FROM Pedidos
WHERE DataPedido BETWEEN '2023-09-27' AND  '2023-10-08'
ORDER BY DataPedido
ASC;

/*EXERCÍCIO 9 -  9.	Selecione os 5 produtos mais baratos.*/

SELECT *
FROM Produtos
ORDER BY Preco
ASC
LIMIT 5;

/*EXERCÍCIO 10 -  10.	Selecione todos os produtos que foram pedidos em um determinado pedido.*/

SELECT Produtos.NomeProduto,Pedidos.PedidoID
FROM Pedidos
JOIN ItensPedido ON Pedidos.PedidoID = ItensPedido.PedidoID
JOIN Produtos ON Produtos.ProdutoID = ItensPedido.ProdutoID
WHERE Pedidos.PedidoID = 1
;
desc itensPedido;
select pedidoID, ProdutoID
from ItensPedido
where PedidoID = 3;



/*EXERCÍCIO 11 -  11.	Mostre os clientes que possuem pedido que tenham a letra O no final do nome.*/

SELECT Clientes.Nome, Pedidos.PedidoID
FROM Pedidos
LEFT JOIN Clientes
ON Clientes.ClienteID = Pedidos.PedidoID
WHERE nome LIKE '%o';


/*EXERCÍCIO 12 -  12.	Selecione todos os produtos com os nomes dos clientes que os compraram.*/

SELECT Clientes.Nome, Produtos.NomeProduto
FROM Clientes
JOIN Pedidos ON Clientes.ClienteID = Pedidos.PedidoID
JOIN ItensPedido ON Pedidos.PedidoID = ItensPedido.ProdutoID
JOIN Produtos ON Produtos.ProdutoID = ItensPedido.ProdutoID;

/*EXERCÍCIO 13 -  13.	Encontre os clientes que não fizeram nenhum pedido.*/

SELECT Clientes.ClienteID, Clientes.Nome, Pedidos.ValorTotal
FROM Clientes
LEFT JOIN Pedidos
ON Pedidos.PedidoID = Clientes.ClienteID
WHERE ValorTotal is NULL;

/*EXERCÍCIO 14 -  14.	Mostre somente os clientes que começam com a letra A.*/

SELECT *
FROM Clientes
WHERE Nome LIKE 'a%';

/*EXERCÍCIO 15 -  15.	Encontre todos os pedidos feitos entre duas datas e mostre os produtos incluídos nesses pedidos, limitando os resultados a 7 pedidos.*/

SELECT Pedidos.DataPedido, Produtos.NomeProduto
FROM Pedidos
JOIN ItensPedido ON Pedidos.PedidoID = ItensPedido.ItemID
JOIN Produtos ON Produtos.ProdutoID = ItensPedido.PedidoID
WHERE DataPedido BETWEEN '2023-09-16' AND '2023-10-06'
ORDER BY DataPedido
ASC
LIMIT 7;

/*EXERCÍCIO 16 -  16.	Mostre os clientes que possuam ‘arc’ em qualquer parte do nome.*/

SELECT Nome
FROM Clientes
WHERE Nome LIKE '%arc%';

/*EXERCÍCIO 17 -  17.	Mostre o ID do pedido, data, valor total, nome do produto e a quantidade.*/

SELECT Pedidos.PedidoID, Pedidos.DataPedido, Pedidos.ValorTotal, Produtos.NomeProduto, ItensPedido.Quantidade
FROM Pedidos
JOIN ItensPedido ON Pedidos.PedidoID = ItensPedido.ItemID
JOIN Produtos ON Produtos.ProdutoID = ItensPedido.PedidoID;

/*EXERCÍCIO 18 -  18.	Com a consulta realizada acima, mostre agora também o nome do cliente, selecionando apenas os 5 valores totais mais alto.*/

SELECT Pedidos.PedidoID, Pedidos.DataPedido, Pedidos.ValorTotal, Produtos.NomeProduto, ItensPedido.Quantidade, Clientes.Nome
FROM Pedidos
JOIN Clientes ON Clientes.ClienteID = Pedidos.PedidoID
JOIN ItensPedido ON Pedidos.PedidoID = ItensPedido.ItemID
JOIN Produtos ON Produtos.ProdutoID = ItensPedido.PedidoID
ORDER BY ValorTotal
DESC
LIMIT 5;

#Lista de Exercícios 2

/*1 - Criar a tabela Tipo de Cliente para adicionar o tipo de cada pessoa, se ela é pessoa JURÍDICA OU FÍSICA.*/
CREATE TABLE TipoDeCliente (
	TipoID INT AUTO_INCREMENT PRIMARY KEY,
    TipoCliente VARCHAR(15)
    /*ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)*/
);

drop table TipoDeCliente;

/*2 - Alterar a tabela clientes adicionando a nova coluna tipo cliente.*/
	ALTER TABLE Clientes
    ADD TipoCliente INT;
    
    /*ALTER TABLE Clientes
    DROP COLUMN TipoCliente;*/
    
    ALTER TABLE Clientes
	ADD FOREIGN KEY (TipoCliente) REFERENCES TipoDeCliente(TipoID);
    
    select * from Clientes;
    
/*3 - Inserir os dois tipos de pessoa na tabela.*/
	INSERT INTO TipoDeCliente (TipoCliente) VALUES ('Pessoa Física');
    INSERT INTO TipoDeCliente (TipoCliente) VALUES ('Pessoa Jurídica');
    
    
/*4 - Cadastre todos os clientes que o nome termina com a letra ‘A’ como pessoa Física e todos os clientes que o nome termina com a letra ‘O’ como pessoa jurídica.*/
	SELECT ClienteID, Nome, TipoCliente FROM Clientes
    WHERE Nome LIKE '%a';
    SELECT ClienteID, Nome, TipoCliente FROM Clientes
    WHERE Nome LIKE '%o';
    SELECT * FROM TipoDeCliente;
    
    UPDATE Clientes 
    SET TipoCliente = 1
    WHERE Nome LIKE '%a';
    
    UPDATE Clientes 
    SET TipoCliente = 2
    WHERE Nome LIKE '%o';
    
/*5 - Faça uma busca dos clientes ignorando as repetições dos tipos de pessoa.*/
	SELECT DISTINCT TipoCliente FROM Clientes;
    
/*6 - Mostre o nome dos clientes e os seus tipos, mesmo tendo um tipo cadastrado ou não.*/
	SELECT Nome, TipoCliente FROM Clientes;
/*7 - Com a consulta acima, agora mostre os nomes de clientes que não possuem tipo.*/
	SELECT Nome, TipoCliente FROM Clientes
    WHERE TipoCliente IS NOT NULL;
/*8 - Faça uma consulta que mostre os dados do cliente e o nome do tipo em vez do código de tipo.*/
	SELECT Clientes.Nome, TipoDeCliente.TipoCliente 
    FROM Clientes
    JOIN TipoDeCliente
    ON TipoDeCliente.TipoID = Clientes.TipoCliente;
    
/*9 - Os clientes dos Id (5, 9, 10, 20, 25, 40, 43, 89) retornaram e fizeram novas compras, sendo que os clientes de id (5, 25 e 20) compraram cada um 3 produtos no dia 17 de outubro de 2023, os clientes de id (9 e 43) compraram cada um 6 produtos no dia 12 de setembro de 2023, e o cliente de id (10, 40 e 89) comprou todos os produtos disponíveis no dia 15 de outubro de 2023.*/

/*10 - Faça uma busca de todos os pedidos entre os dias 01 e 31 de outubro.*/
	SELECT * FROM Pedidos
    WHERE DataPedido BETWEEN '2023-10-01' AND '2023-10-31';
/*11 - Faca uma busca somando o valor de todos pedidos.*/
	SELECT sum(ValorTotal)
    FROM Pedidos;
/*12 - Liste os clientes que possuem compras em um mesmo dia.*/
SELECT Clientes.Nome, Pedidos.DataPedido 
FROM Clientes
JOIN Pedidos
ON Pedidos.PedidoID = Clientes.ClienteID
WHERE DataPedido LIKE '%2023-10-29%';

select * from Pedidos
order by DataPedido;
/*13 - Faça uma consulta que retorne o total de vendas de cada cliente.*/
SELECT sum(Pedidos.ValorTotal), Clientes.Nome
FROM Pedidos
JOIN Clientes
ON Pedidos.ClienteID = Pedidos.ClienteID
GROUP BY Nome;
/*14 - Mostre os produtos que foram comprados mais de 1 vez.*/
SELECT Produtos.NomeProduto, count(*) 
FROM Produtos
JOIN ItensPedido
ON Produtos.ProdutoID = ItensPedido.ProdutoID;

/*15 - Faça uma busca que mostre o nome dos clientes que compraram mais produtos.*/
SELECT Clientes.Nome, count(Pedidos.PedidoID)
FROM Clientes
JOIN Pedidos
ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.Nome
Order by count(Pedidos.PedidoID)
DESC;

# Lista de exercícios 3

/*1- Escreva uma busca que mostre a data atual.*/

SELECT CURRENT_DATE() FROM Pedidos;

/*2- Escreva uma busca que mostre o ID do pedido, Data do pedido e o valor total com aumento de 10%.*/

SELECT 
	PedidoID, 
    DataPedido, 
    ValorTotal, 
    Valortotal*1.1 AS ValortotalComAumento
FROM Pedidos;

#Seleção com ROUND() que retorna o valor arredondado com o número de casas decimais depois da vírgula indicado pelo número "2"
SELECT
    PedidoID,
    DataPedido,
    ValorTotal,
    ROUND((ValorTotal * 1.1), 2) AS ValorTotalComAumento
FROM
    Pedidos;
    
/*3- Escreva uma busca igual a anterior, mas que mostre também uma coluna com o valor que foi acrescido.*/
#Observação: Não consegui fazer com que  a busca retornasse uma coluna com o valor acrescido, pois fica dando erro dizendo que a coluna ValorTotalComAumento não existe. O Bard sugeriu a criação da coluna para que ela armazene os valore. Verificar com o professor.

    SELECT
    PedidoID,
    DataPedido,
    ValorTotal * 1.1 AS ValorTotalComAumento, 
    ValorTotal*.1 AS ValorAcrescido
FROM
    Pedidos;
    
/*4- Escreva uma busca que mostre o nome do cliente em letras maiúsculas e e-mail com letras minúsculas.*/
SELECT UPPER(Nome), LOWER(Email) FROM Clientes;
/*5- Faça uma busca que mostre as três primeiras letras dos nomes dos clientes e seu e-mail.*/

#seleção normal com SUBSTRING()
SELECT SUBSTRING(Nome, 1, 3), Email FROM Clientes;

#Com UPPER
SELECT UPPER(SUBSTRING(Nome, 1, 3)) AS PrimeirasLetrasDoNome, Email FROM Clientes;

#Com colunas concatenadas usando CONCAT()
SELECT CONCAT(UPPER(SUBSTRING(Nome, 1, 3)), ' - ', Email) AS NomeEmail FROM Clientes;

/*6- Faça uma busca que mostre a quantidade de dias entre a data do pedido e a data de hoje.*/

SELECT PedidoID, DataPedido, ( DataPedido - current_date()) as Diferença 
FROM Pedidos;

/*7- Faça uma consulta igual a anterior, mas mostre outra coluna que acrescente 15 dias da data do pedido.*/

SELECT
    PedidoID,
    DataPedido,
    current_date() as DataAtual,
    (current_date() - DataPedido) AS Diferença,
    DataPedido + INTERVAL 15 DAY AS DataPedido15Dias
FROM
    Pedidos;
    
    #Resposta do professor
    select *, current_date() - dataPedido as Diferença from Pedidos;
    select *,
    datediff(current_date, DataPedido) as Diferença,
    date_add(DataPedido, interval 15 day) as quantidade
    from Pedidos;