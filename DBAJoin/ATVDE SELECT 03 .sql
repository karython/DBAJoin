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
    
    /*-----------------------------------------------------------------------------------------------------------------------------------------------------------------*/
    
    /*1. Selecione todos os clientes em ordem alfabética crescente pelo nome.*/
    
    select nome,email,telefone from clientes
    order by nome,email,telefone
    asc;
    
   /* 2.	Selecione todos os produtos com preço superior a $10, ordenados por preço decrescente, limitando o resultado a 5 produtos.*/
  
   select * from produtos;
   
   select preco,nomeproduto 
   from produtos
   order by preco,nomeproduto 
   between 10 and 10000
   limit 5;
   
  /* 3.	Selecione os clientes com pedidos entre 120 a 190 reais, mostre qual menor valor pedido.*/
  
  select * from pedidos;
  
  select valortotal from pedidos
 where valortotal 
 between 120 and 190 
 order by valortotal asc
limit 1;
 
 /*4.	Selecione todos os pedidos com os nomes dos clientes.*/
   select * from pedidos;
   select * from clientes;
   
   select Clientes.nome,pedidos.pedidoid
   from pedidos inner join clientes 
   on clientes.Clienteid = pedidos.Clienteid;
   
   /*5.	Mostre o ID do pedido, valor, data, ID do cliente e o nome do cliente.*/
   
   select * from pedidos;
   
   select Pedidos.pedidoid,pedidos.valortotal,pedidos.datapedido,pedidos.clienteid,clientes.nome
   from pedidos 
   inner join clientes
   on pedidos.Clienteid = clientes.Clienteid
   order by Nome;
   
   /*6.	Mostre todos os Clientes com Pedidos com um valor acima de $200.*/
   
   select clientes.nome,pedidos.valortotal
   from clientes
   join pedidos
   on clientes.Clienteid = pedidos.Clienteid
   where valortotal >200;
   
   /*7.	Organize de Forma crescente alfabética o nome dos clientes selecionados acima.*/
   
   select nome
   from clientes
   order by nome asc;
   
  /* 8.	Selecione todos os pedidos feitos entre 27 de setembro de 2023 e 08 de outubro de 2023 com a data de forma crescente.*/
   
   select * from pedidos;
   
   select pedidos.datapedido,pedidos.pedidoid,clientes.nome,clientes.clienteid
   from pedidos
   join clientes
   on pedidos.clienteid = clientes.clienteid
   where datapedido between '2023-09-27' and '2023-10-08' 
   order by datapedido asc;
   
  /* 9.	Selecione os 5 produtos mais baratos.*/
  

  select * from produtos;
  
  select preco 
  from produtos
  order by preco asc
  limit 5;
  
  /*10.	Selecione todos os produtos que foram pedidos em um determinado pedido.*/
  
  select * from pedidos;
  select * from produtos;
  
  select produtos.nomeproduto, produtos.produtoid, pedidos.clienteid, pedidos.pedidoid, pedidos.datapedido
  from produtos
  join pedidos
  on produtos.produtoid = pedidos.pedidoid
  where pedidoID
  like '1%';
  
 /* 11.	Mostre os clientes que possuem pedido que tenham a letra O no final do nome*/
 
 select clientes.nome, clientes.clienteid, pedidos.pedidoid
 from clientes
 join pedidos
 on clientes.clienteid = pedidos.pedidoid
 where nome
 like '%O';
  
/*12.	Selecione todos os produtos com os nomes dos clientes que os compraram.*/

select produtos.produtoid,produtos.nomeproduto, clientes.clienteid, clientes.nome
from produtos
join clientes
on produtos.produtoid = clientes.clienteid
;
  
  /*13.	Encontre os clientes que não fizeram nenhum pedido.*/
  
  select * from pedidos;
  
  select clientes.nome, clientes.clienteid, pedidos.pedidoid
  from clientes 
  left join pedidos
  on clientes.clienteid = pedidos.pedidoid
;

/*14.	Mostre somente os clientes que começam com a letra A.*/

select clientes.nome, clientes.clienteid, pedidos.pedidoid
 from clientes
 join pedidos
 on clientes.clienteid = pedidos.pedidoid
 where nome
 like 'a%'
 ;
 
/* 15.	Encontre todos os pedidos feitos entre duas datas e mostre os produtos incluídos nesses pedidos, limitando os resultados a 7 pedidos.*/
 select pedidos.datapedido,pedidos.pedidoid,clientes.nome,clientes.clienteid
   from pedidos
   join clientes
   on pedidos.clienteid = clientes.clienteid
   where datapedido between'2023-09-01' and '2023-09-31' 
   order by datapedido asc
   limit 7;
   
   /*16.	Mostre os clientes que possuam ‘arc’ em qualquer parte do nome.*/
   
   select clientes.nome, clientes.clienteid, pedidos.pedidoid
 from clientes
 join pedidos
 on clientes.clienteid = pedidos.pedidoid
 where nome
 like '%arc%'
 ;
   
 /*17.	Mostre o ID do pedido, data, valor total, nome do produto e a quantidade.*/
 
 select * from pedidos;
 
 select * from produtos;
 
 select pedidos.pedidoid,pedidos.datapedido,pedidos.valortotal, produtos.nomeproduto
 from pedidos
 join produtos
 on pedidos.pedidoid = produtos.produtoid;
 
 /*18.	Com a consulta realizada acima, mostre agora também o nome do cliente, selecionando apenas os 5 valores totais mais alto.*/
 
 select clientes.nome,pedidos.valortotal
   from clientes
   join pedidos
   on clientes.Clienteid = pedidos.Clienteid
   where valortotal >200
   limit 5;
 
 /*-------------------------------------------------------------------------------------------------------------------------------*/
 
 /*1.	Criar a tabela Tipo de Cliente para adicionar o tipo de cada pessoa, se ela é pessoa JURÍDICA OU FÍSICA.*/

  Create table TipodeCliente(
 TipoID INT PRIMARY KEY auto_increment,
  tipo VARCHAR (45) NOT NULL
  );
  
  alter table TipodeCliente add column ClienteID Int;
  
  select * from TipodeCliente;
  /*2.	Alterar a tabela clientes adicionando a nova coluna tipo cliente.*/
 
alter table Clientes
add column TipoCliente VARCHAR (45);
 
 select * from clientes;
 
 /*3.	Inserir os dois tipos de pessoa na tabela*/
 
 insert into TipodeCliente (tipo) values
 ('Pessoa Jurídica'),
 ('Pessoa Física');
 
 select * from TipodeCliente;
 
 /*4.	Cadastre todos os clientes que o nome termina com a letra ‘A’ como pessoa Física e todos os clientes que o nome termina com a letra ‘O’ */
 
 update clientes set TipoCliente = 1
 where nome like '%A';
 
 update clientes set TipoCliente = 2
 where nome like '%0';
 
 Select * from Clientes;
 /*5.	Faça uma busca dos clientes ignorando as repetições dos tipos de pessoa.*/
 
 select nome, tipodecliente.tipo
 from clientes
 join TipodeCliente
 on clientes.clienteid = tipodecliente.clienteid;
 
 /*6.	Mostre o nome dos clientes e os seus tipos, mesmo tendo um tipo cadastrado ou não.*/
 
 select clientes.nome,tipodecliente.tipo as tipo
 from clientes
 inner join tipodecliente
 on clientes.clienteid = tipodecliente.tipoid;
 
 /*7.	Com a consulta acima, agora mostre os nomes de clientes que não possuem tipo.*/
 select * from clientes;
 
 select clientes.nome
 from clientes
 where TipoCliente IS nULL;
 
 /*8.	Faça uma consulta que mostre os dados do cliente e o nome do tipo em vez do código de tipo*/
 
 select clientes.nome, TipodeCliente.tipo
 from clientes
 join TipodeCliente;
 
 /*9.	Os clientes dos Id (5, 9, 10, 20, 25, 40, 43, 89) retornaram e fizeram novas compras, sendo que os clientes de id (5, 25 e 20)
 compraram cada um 3 produtos no dia 17 de outubro de 2023, os clientes de id (9 e 43) compraram cada um 6 produtos no dia 12 de setembro de 2023, e o cliente de id (10, 40 e 89)
 comprou todos os produtos disponíveis no dia 15 de outubro de 2023.*/
 
 
 /*10.	Faça uma busca de todos os pedidos entre os dias 01 e 31 de outubro.*/
 select * from pedidos;
 
 select *
 from pedidos
 where datapedido between '2023-10-01' and '2021-10-31';
 
 /*11.	Faca uma busca somando o valor de todos pedidos.*/
 
SELECT SUM(ValorTotal) AS TotalVendas
FROM Pedidos;

/*12.	Liste os clientes que possuem compras em um mesmo dia.*/

select C1.nome from clientes;
SELECT DISTINCT C1.Nome, P1.DataPedido
FROM Clientes C1
JOIN Pedidos 
P1 ON C1.ClienteID = P1.ClienteID
WHERE (C1.ClienteID, P1.DataPedido) IN
    (SELECT C2.ClienteID, P2.DataPedido
     FROM Clientes C2
     JOIN Pedidos P2 ON C2.ClienteID = P2.ClienteID
     GROUP BY C2.ClienteID, P2.DataPedido
     HAVING COUNT(*) > 1);
     
     /*13.	Faça uma consulta que retorne o total de vendas de cada cliente.*/
     
     select Clientes.nome, SUM(pedidos.valortotal) as totalvalor
     from clientes
     join pedidos on clientes.clienteid = pedidos.clienteid
     group by clientes.nome;
     
     
/*14.	Mostre os produtos que foram comprados mais de 1 vez.*/
select * from produtos;


select produtos.nomeproduto, count(*) as quantidadecomprada
from produtos
join itenspedido on produtos.produtoid = itenspedido.produtoid
group by produtos.nomeproduto
having count(*)> 1;

/*15.	Faça uma busca que mostre o nome dos clientes que compraram mais produtos.*/
select * from pedidos;


select clientes.nome ,count(*) as quantidadecomprada
from clientes
join pedidos on pedidos.clienteid = clientes.clienteid
join itenspedido on pedidos.pedidoid = itenspedido.pedidoid
group by clientes.nome
order by quantidadecomprada desc;


/* select de multiplicação do valor X da tabela Y
select * from produtos;

select preco*10 from produtos;

select * from pedidos;

select valortotal*18 from pedidos;*/

select datapedido;

/* select de substituição de um valor pelo outro

select replace (nome,'r' , 'h') from clientes;*/

/* select de intervalos e datas atuais comparandos os anos tais*/

select datapedido, datapedido + interval "9" year as datapedidos from pedidos order by datapedido;


/*--1--*/

	select pedidoID, current_date() as DTpedido
	from pedidos;

/*--2--*/

select valortotal*1.1 as total from pedidos;

/*--3--*/

select 
valortotal*1.1 as ValorComAumento,
valortotal*.1 as ValorAcrescido
from pedidos;

/*--4--*/

select upper(nome), lower(email)
from clientes;

/*--5--*/

select concat(upper(substring(nome,1,3)),'- ',email)
as NomeEmail
from Clientes;

/*--6--*/

select datapedido,datapedido +
current_date as DTpedido 
From pedidos;

/*--7--*/

select pedidoid,datapedido,
current_date() as Dataatual,
(current_date() - Datapedido) as Diferença,
datapedido + interval 15 day as Após15dias
from pedidos;

/*-----------------------------------------------------------------------------------------------------------------*/
 
 /*---1---*/
 select sum(valortotal)as Totalvendas
 from pedidos;
 
 /*---2---*/
 
 select * from pedidos;
 
 select clientes.nome ,count(1) as quantidadepedidos
 from clientes
 join pedidos
 on pedidos.clienteid = clientes.clienteid
 group by pedidos.pedidoid
 having count(*);
 
 /*---3---*/
 
select * from pedidos;

 select * from clientes;
 
SELECT clientes.nome , COUNT(pedidos.pedidoid) AS numero_de_pedidos
from clientes
join pedidos
on clientes.clienteid = pedidos.clienteid
group by clientes.clienteid
having COUNT(pedidos.pedidoid) > 2
order by numero_de_pedidos desc;

/*---4---*/


select * from  pedidos;

select * from produtos;


select
 max(valortotal) as valormax,
 min(valortotal) as valormin
 from pedidos;
 
 /*---5---*/
 select
 avg(preco) as médiapreco
 from produtos;
 
 /*---6---*/
 
 select * from produtos;
 
 select
  SUBSTRING(nomeproduto, 1, 4) as nome
from
  produtos;
  
  /*---7---*/
  
  select pedidoID, current_date() as DataAtual
  from pedidos;
  
  /*---8---*/
  
select pedidoid,datapedido,
current_date() as Dataatual,
(current_date() - Datapedido) as Diferença,
datapedido + interval day as DiferencaData
from pedidos;
