CREATE database IF NOT exists DB_JOIN;
USE DB_JOIN;

CREATE TABLE CLIENTE (
ID_CLIENTE INT PRIMARY KEY auto_increment,
NOME VARCHAR(255),
EMAIL VARCHAR (255),
TELEFONE varchar(55)
);

CREATE table PEDIDO (
ID_PEDIDO INT PRIMARY KEY auto_increment,
CLIENTE_ID INT,
DTPEDIDO DATE,
VLPEDIDO DECIMAL (10,2)
/*constraint FK_IDCLIENTE foreign key (CLIENTE_ID) REFERENCES CLIENTE*/
);

ALTER TABLE PEDIDO
ADD constraint FK_IDCLIENTE
foreign key (CLIENTE_ID)
references CLIENTE(ID_CLIENTE)
ON DELETE cascade;

-- Inserir clientes fictícios
INSERT INTO CLIENTE (Nome, Email, Telefone)
VALUES
    ('João Silva', 'joao@email.com', '(11) 1234-5678'),
    ('Maria Santos', 'maria@email.com', '(21) 9876-5432'),
    ('Carlos Ferreira', 'carlos@email.com', '(31) 5555-5555'),
    ('Ana Souza', 'ana@email.com', '(41) 2222-3333'),
    ('Pedro Rodrigues', 'pedro@email.com', '(51) 7777-8888'),
    ('Fernanda Lima', 'fernanda@email.com', '(62) 9999-9999'),
    ('Roberto Alves', 'roberto@email.com', '(71) 4444-5555'),
    ('Luciana Martins', 'luciana@email.com', '(81) 3333-4444'),
    ('Ricardo Oliveira', 'ricardo@email.com', '(91) 1234-5678'),
    ('Aline Fernandes', 'aline@email.com', '(61) 9876-5432');

-- Inserir pedidos fictícios para clientes
INSERT INTO PEDIDO (ID_PEDIDO, CLIENTE_ID, DTPEDIDO, VLPEDIDO)
VALUES
    (1, 1, '2023-08-15', 120.50),
    (2, 2, '2023-08-16', 75.20),
    (3, 3, '2023-08-17', 250.75),
    (4, 4, '2023-08-18', 50.00),
    (5, 5, '2023-08-19', 180.90),
    (6, 6, '2023-08-20', 300.25),
    (7, 7, '2023-08-21', 90.60),
    (8, 8, '2023-08-22', 40.75),
    (9, 9, '2023-08-23', 60.30),
    (10, 10, '2023-08-24', 95.40);
    
    
    SELECT * FROM CLIENTE;
    SELECT * FROM PEDIDO;
    
    DELETE FROM CLIENTE WHERE ID_CLIENTE = 6;
    
    
    
    
SELECT PEDIDO.ID_PEDIDO, CLIENTE.NOME, PEDIDO.DTPEDIDO, PEDIDO.VLPEDIDO
FROM PEDIDO
INNER JOIN CLIENTE ON PEDIDO.CLIENTE_ID = CLIENTE.ID_CLIENTE
;
