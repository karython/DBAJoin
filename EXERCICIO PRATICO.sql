-- Criar a base de dados
drop database Gerenciador;
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
desc clientes;
select * from clientes;

/*1*/
create table Tipo_de_Cliente
(
Id_tipo_Cliente int auto_increment primary key,
Tipo_de_pessoa varchar(20)
);

/*2*/
alter table Clientes add  tipo_cliente int;


/*3*/
insert into Tipo_de_Cliente(Tipo_de_Pessoa)values
('Juridica'),('Física');


alter table clientes add constraint fk_tipo_cliente foreign key (tipo_cliente) references Tipo_de_Cliente(id_tipo_cliente) on delete cascade ;
truncate table clientes;
/*4*/
select ClienteID ,Nome
from Clientes
where nome
like '%a';

update Clientes set tipo_cliente= null where ClienteID >1;
update Clientes set tipo_cliente= 2 where ClienteID =1;
update Clientes set tipo_cliente= 2 where ClienteID >=4 and ClienteID <=6;
update Clientes set tipo_cliente= 2 where ClienteID =8;
update Clientes set tipo_cliente= 2 where ClienteID >=11 and ClienteID <=14;
update Clientes set tipo_cliente= 2 where ClienteID =16;
update Clientes set tipo_cliente= 2 where ClienteID =18;
update Clientes set tipo_cliente= 2 where ClienteID >=21 and ClienteID <=22;
update Clientes set tipo_cliente= 2 where ClienteID >=24 and ClienteID <=26;
update Clientes set tipo_cliente= 2 where ClienteID >=29 and ClienteID <=31;
update Clientes set tipo_cliente= 2 where ClienteID =33;
update Clientes set tipo_cliente= 2 where ClienteID =36 and ClienteID <=36;
update Clientes set tipo_cliente= 2 where ClienteID =39;
update Clientes set tipo_cliente= 2 where ClienteID =40;
update Clientes set tipo_cliente= 2 where ClienteID =42;
update Clientes set tipo_cliente= 2 where ClienteID =44;
update Clientes set tipo_cliente= 2 where ClienteID >=47  AND ClienteID <=48;
update Clientes set tipo_cliente= 2 where ClienteID >=50  AND ClienteID <=52 ;
update Clientes set tipo_cliente= 2 where ClienteID >=56 AND ClienteID <=57;
update Clientes set tipo_cliente= 2 where ClienteID =59;
update Clientes set tipo_cliente= 2 where ClienteID >=62 AND ClienteID <=64;
update Clientes set tipo_cliente= 2 where ClienteID >=66 AND ClienteID <=67;
update Clientes set tipo_cliente= 2 where ClienteID >=71 and ClienteID <=74;
update Clientes set tipo_cliente= 2 where ClienteID =76;
update Clientes set tipo_cliente= 2 where ClienteID >=79 AND ClienteID <=82;
update Clientes set tipo_cliente= 2 where ClienteID =84;
update Clientes set tipo_cliente= 2 where ClienteID =86;
update Clientes set tipo_cliente= 2 where ClienteID =88;
update Clientes set tipo_cliente= 2 where ClienteID =90;


select ClienteID ,Nome
from Clientes
where nome
like  '%o';

update Clientes set tipo_cliente=1 where ClienteID=15;
update Clientes set tipo_cliente=1 where ClienteID=27;
update Clientes set tipo_cliente=1 where ClienteID=37;
update Clientes set tipo_cliente=1 where ClienteID=45;
update Clientes set tipo_cliente=1 where ClienteID=54;
update Clientes set tipo_cliente=1 where ClienteID=61;
update Clientes set tipo_cliente=1 where ClienteID=69;
update Clientes set tipo_cliente=1 where ClienteID=77;
update Clientes set tipo_cliente=1 where ClienteID=85;
update Clientes set tipo_cliente=1 where ClienteID=89;

/*5*/
Select * from clientes;

/*6*/
SELECT nome, tipo_cliente
from clientes;


/*7*/
SELECT nome, tipo_cliente
from clientes
where tipo_cliente is null;


/*8*/
select ClienteID, Nome, Tipo_de_pessoa
From Clientes
left join Tipo_de_Cliente 
on Clientes.tipo_cliente = Tipo_de_cliente.Id_tipo_Cliente ;



/*9*/
select* from pedidos;
insert into pedidos(ClienteID, DataPedido, ValorTotal) values
(5,'2023-10-17', 46.50),/*produto2 3*/
(5,'2023-10-17', 20.75),/*produto3 1*/
(5,'2023-10-17', 12.25) ,/*produto5 1*/


(25,'2023-10-17',5.50 ), /*produto6 1*/
(25,'2023-10-17',30.99), /*produto7 1*/
(25,'2023-10-17',8.75 ), /*produto8 1*/


(20,'2023-10-17',37.00 ),/*produto9 2*/
(20,'2023-10-17',11.00 ),/*produto6  2*/
(20,'2023-10-17',36.75 ),/*produto5 3 */


(9,'2023-09-12',47.94 ),/*produto4 6*/
(9,'2023-09-12',15.50 ),/*produto2  1 */
(9,'2023-09-12',25.99 ),/*produto10 1 */
(9,'2023-09-12',16.50 ),/*produto6 3*/
(9,'2023-09-12',43.96 ),/*produto1 4 */
(9,'2023-09-12',18.50 ),/*produto9 1 */


(43,'2023-09-12',52.50),/*produto8 6*/
(43,'2023-09-12',20.75),/*produto3 1*/
(43,'2023-09-12',30.99),/*produto7 1*/
(43,'2023-09-12',7.99),/*produto4 1*/
(43,'2023-09-12',15.50),/*produto2 1*/
(43,'2023-09-12',12.25),/*produto5 1*/

(10,'2023-10-15',32.97),/*1* 3*/
(10,'2023-10-15',77.50),/*2* 5*/
(10,'2023-10-15',41.50),/*3* 2*/
(10,'2023-10-15',31.96),/*4* 4 */
(10,'2023-10-15',61.25),/*5* 5*/
(10,'2023-10-15',33.00),/*6* 6*/
(10,'2023-10-15',61.98),/*7* 2*/
(10,'2023-10-15',26.25),/*8* 3*/
(10,'2023-10-15',92.50),/*9* 5*/
(10,'2023-10-15',25.99),/*10* 1*/

(40,'2023-10-15',10.99),/*1* 1*/
(40,'2023-10-15',62.00),/*2* 4*/
(40,'2023-10-15',20.75),/*3* 1*/
(40,'2023-10-15',7.99),/*4* 1*/
(40,'2023-10-15',12.25),/*5* 1*/
(40,'2023-10-15',5.50),/*6* 1*/
(40,'2023-10-15',30.99),/*7* 1*/
(40,'2023-10-15',8.75),/*8* 1*/
(40,'2023-10-15',18.50),/*9* 1*/
(40,'2023-10-15',25.99),/*10* 1*/


(89,'2023-10-15',10.99),/*1* 1*/
(89,'2023-10-15',15.50),/*2* 1*/
(89,'2023-10-15',20.75),/*3* 1*/
(89,'2023-10-15',7.99),/*4* 1*/
(89,'2023-10-15',12.25),/*5* 1*/
(89,'2023-10-15',5.50),/*6* 1*/
(89,'2023-10-15',30.99),/*7* 1*/
(89,'2023-10-15',8.75),/*8* 1*/
(89,'2023-10-15',18.50),/*9* 1*/
(89,'2023-10-15',25.99);/*10* 1*/


select * from produtos;

/*10*/

select * 
from pedidos
where DataPedido
between '2023-10-01' and '2023-10-31';

/*11*/

select sum(Valortotal) as Valordetodospedidos
from Pedidos
;


/*12*/
select Nome ,DataPedido
from Pedidos
join clientes on clientes.clienteID = pedidos.PedidoID
where DataPedido
between '2023-10-15'and '2023-10-15'
order by Nome ASC;
;


/*13*/

select Nome, sum(Valortotal) as ValorTotal
from clientes
join pedidos
on clientes.clienteID = pedidos.ClienteID
Group by Nome;


/*14*/
select Produtos.ProdutoID,NomeProduto,(Quantidade)
from produtos
left join itenspedido on Produtos.ProdutoID = Itenspedido.ProdutoID 
group by quantidade 
having quantidade >1;


/*15*/
select Nome,sum(Quantidade)
from itenspedido
left join clientes on clientes.ClienteID = Itenspedido.ProdutoID 
group by quantidade asc;




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






select* from Tipo_de_Cliente;
select * from clientes;
select * from produtos;
select * from pedidos;
select * from ItensPedido;

delete from clientes where ClienteID >90;

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


select * from Clientes
order by Nome ASC;

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
    
    
INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade) VALUES
    (44, 2, 3),
    (45, 3, 1),
    (46, 5, 1),

    (47, 6, 1),
    (48, 7, 1),
    (49, 8, 1),

    (50, 9, 2),
    (51, 6, 2),
    (52, 5, 3),

    (53, 4, 6),
    (54, 2, 1),
    (55, 10, 1),
 (56, 6, 3),
    (57, 1, 4),
    (58, 9, 1),
    (59, 8, 6),

    (60,3, 1),
    (61, 7, 1),
    (62, 4, 1),
    (63, 2, 1),
    (64, 5, 1),
    (65, 1, 3),
    (66, 2, 5),
    (67, 3, 2),
    (68, 4, 4),
    (69, 5, 5),
    (70, 6, 6),
    (71, 7, 2),
    (72, 8, 3),
    (73, 9, 5),
    (74, 10,1),

    (75, 1, 1),
    (76, 2, 4),
    (77, 3, 1),
    (78, 4, 1),
    (79, 5, 1),
    (80, 6, 1),
    (81, 7, 1),
    (82, 8, 1),
    (83, 9, 1),
    (84, 10, 1),

    (86, 1, 1),
    (87, 2, 1),
    (88, 3, 1),
    (89, 4, 1),
    (90, 5, 1),
    (91, 6, 1),
    (92, 7, 1),
    (93, 8, 1),
    (94, 9, 1);
