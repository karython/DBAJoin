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
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID) on delete cascade
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
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID) on delete cascade,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID) on delete cascade
);

create table tipo_cliente(
id_tipo int primary key auto_increment,
tipo varchar(50)
);

alter table clientes
add column id_tipo int;

insert into tipo_cliente(tipo)values ('pessoa física'),('pessoa jurídica');

update clientes set id_tipo = 1 where clienteid = 3;
select * from clientes where nome like '%s';


alter table clientes add constraint fk_tipo_cliente
foreign key (id_tipo)
references tipo_cliente(id_tipo)
on delete cascade;




-- somar total cada usuario







-- COLINHA

select  Pedidos.PedidoID, Clientes.Nome, Pedidos.DataPedido, Pedidos.ValorTotal, Produtos.NomeProduto, ItensPedido.Quantidade
from ItensPedido
join Pedidos on ItensPedido.PedidoID = Pedidos.PedidoID
join Produtos on  ItensPedido.ProdutoID = Produtos.ProdutoID
join Clientes on Pedidos.ClienteID = Clientes.ClienteId
order by ValorTotal DESC
limit 5;

select *
from clientes
where ClienteID between 10 and 20;

select *
from Clientes
where Nome like '%arc%';

-- junção sem join
select Pedidos.ValorTotal, Clientes.Nome
from Pedidos, Clientes
where Pedidos.ClienteID = Clientes.ClienteID;

-- inner join com condições
select Pedidos.DataPedido, Pedidos.ValorTotal, Clientes.Nome
from Pedidos
join Clientes
on Clientes.ClienteID = Pedidos.ClienteID;


-- left join + uma condição is null para mostrar somente os campos null da coluna definida
select Clientes.Nome, Clientes.Telefone, Pedidos.DataPedido, Pedidos.ValorTotal
from Clientes
left join Pedidos
on Clientes.ClienteID = Pedidos.ClienteID
where Pedidos.ValorTotal is null
ORDER BY Nome ASC
LIMIT 10;

delete from Clientes where ClienteID = 2;

select * from clientes;
select * from produtos;
select * from pedidos;
select * from ItensPedido;

-- ira somar os valores da coluna informada
-- nesse exemplo sum esta aplicado na coluna valor total e apelidado
-- ira somar todos os valores das vendas
SELECT SUM(ValorTotal) AS ValorVendas
FROM Pedidos;

-- Consulta para obter o total de vendas por cliente
SELECT
    Clientes.ClienteID, -- colunas que vou mostrar
    Clientes.Nome,
    SUM(Pedidos.ValorTotal) AS TotalDeVendas -- coluna que ira somar os totais de cada cliente
FROM Clientes
LEFT JOIN Pedidos 
ON Clientes.ClienteID = Pedidos.ClienteID
GROUP BY Clientes.ClienteID, Clientes.Nome -- agrupa para contagem
ORDER BY TotalDeVendas DESC;






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
    
    
    select  ID_cliente, count(*) as totalpedidos
    from pedido
    group by ID_cliente;

   

    
    SELECT
    C.ClienteID,
    C.Nome,
    SUM(P.ValorTotal) AS TotalDeVendas
FROM Clientes AS C
LEFT JOIN Pedidos AS P ON C.ClienteID = P.ClienteID
GROUP BY C.ClienteID, C.Nome
ORDER BY TotalDeVendas DESC;
    
    
    
    

/*------------------------- select 18/10/2023 ----------------------------*/
select distinct id_cliente from pedido;
select * from pedido;

SELECT COUNT(*) FROM Clientes;
select count(*) from pedido;
select sum(valortotal) from pedido;

 SELECT ClienteID, COUNT(*) AS TotalDePedidos
FROM Pedidos
GROUP BY ClienteID;

select Clientes.Nome, Tipo_cliente.tipo
from clientes
right join tipo_cliente
on tipo_cliente.id_tipo = clientes.id_tipo;

select * from pedidos where Datapedido = '2023-09-10';

-- ver o valor total de vendas
select  
	PedidoID,
    sum(ValorTotal)
from pedidos;

select *
from pedidos
group by datapedido
;

-- Consulta para obter o total de vendas por cliente
SELECT
    C.ClienteID,
    C.Nome,
    SUM(P.ValorTotal) AS TotalDeVendas
FROM Clientes AS C
LEFT JOIN Pedidos AS P ON C.ClienteID = P.ClienteID
GROUP BY C.ClienteID, C.Nome
ORDER BY TotalDeVendas DESC;


SELECT 
	Produtos.NomeProduto, 
    COUNT(ItensPedido.PedidoID) AS QuantidadePedidos
FROM Produtos
LEFT JOIN ItensPedido 
ON Produtos.ProdutoID = ItensPedido.ProdutoID
GROUP BY Produtos.NomeProduto
HAVING COUNT(ItensPedido.PedidoID) > 1; -- codicao que tenha vendido mais de 5 vezes


SELECT Clientes.Nome, count(Pedidos.PedidoID) AS TotalCompras
FROM Clientes
INNER JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID
INNER JOIN itensPedido ON Pedidos.PedidoID = itenspedido.PedidoID
GROUP BY Clientes.ClienteID, Clientes.Nome
ORDER BY TotalCompras DESC
;

/* em quantas linhas na tabela pedidos eu tenho o cliente com id = 1 */

select count(clienteid) as total_pedidos from pedidos 

group by clienteid
having clienteid = 1;
 

select * from cliente
order by id_cliente desc;


delimiter $$
create procedure InserirPessoas (in nome varchar(255), in telefone varchar(80))
begin
	insert into cliente(nome, telefone) values (nome, telefone);
end$$

delimiter ;


call inserirpessoas('carlim','9999-1223');



-- laboratório 24/10/2023 --------------------------------------------------------------------
-- calculos
select datapedido,valortotal, valortotal - 10 as valorfinal from pedidos;
select datapedido,valortotal, valortotal + 10 from pedidos;
select *, valortotal, valortotal * 1.1 from pedidos;




select datapedido,valortotal, valortotal / 10 from pedidos;



select * from pedidos;
select * from clientes;




SELECT nome, qtd from (select 
	c.clienteId,
	c.nome,
    SUM(ip.quantidade) as qtd
from pedidos p
join clientes c
on c.clienteId = p.clienteID
join itenspedido ip
on ip.pedidoId = p.pedidoId
group by c.clienteId) as dados
where qtd = (select max(qtd) from (select 
	c.clienteId,
	c.nome,
    SUM(ip.quantidade) as qtd
from pedidos p
join clientes c
on c.clienteId = p.clienteID
join itenspedido ip
on ip.pedidoId = p.pedidoId
group by c.clienteId)as dados);






-- maximo minimo e media dos valores
select max(valortotal), min(valortotal), avg(valortotal) as mediavalor from pedidos;




-- mostrar os nomes em letra maiuscula ou minuscula
SELECT upper(nome) from clientes;





-- quantidade caracteres
SELECT nome, length(nome) as qtdcaracteres from clientes;




-- quantidade de caracteries que serao exibidos
select substring(nome, 1,3), email from clientes;




-- translate
select replace(nome, 'a','b') from clientes;



-- data atual
select *, current_date() from pedidos;

-- valor acrecido e o quanto foi acrecido
select *, valortotal * 1.1 as ValorAcrescido, valortotal * .1 as acrecimo
from pedidos;

-- para mostrar a quantidade de dias do dia do pedido ate a data de hoje data de hoje menos data pedido
select pedidoid, current_date - datapedido as intervalodias from pedidos;

-- mostre uma coluna com 15 dias apos a data do pedido
select pedidoid, datapedido, datapedido + 15 as quinzena, current_date - datapedido from pedidos;

-- resultado vai pegar a data e mostrar-la com um intervalo de daqui 7 anos
select datapedido, datapedido + interval "7" year as DtPedido from pedidos order by DtPedido;





/*------------------------------------------------------------------------------------------*/


