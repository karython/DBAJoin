create database WSBRASIL;
USE WSBRASIL;

Create Table Login(
	id INT PRIMARY KEY IDENTITY(1,1),
	email varchar(120)not null,
	senha char(32) not null
);

select * from
sys.tables;

select * from 
sys.databases;



use WSBRASIL;

alter table login add senha char(32) not null;
alter table login drop column Usuario;
alter table login add DataHoraCriacao datetime;
alter table login add DataHoraCriacaoUlitmoAcesso datetime;
alter table login drop column TipoUsuario ;
alter table login drop column password;
exec sp_rename 'login.password', 'senha', 'column';

select * from login ;
d table login;

insert into login (email, senha, DataHoraCriacao, DataHoraUltimoAcesso)values
('joao@gmail.com',12345678, '2023-10-31T10:00:00','2023-10-31T11:35:10'),
('lisandra@gmail.com',6018420,'2023-02-12T12:45:03','2023-03-08T10:09:00'),
('otaviocar@gmail.com',85418731,'2023-11-23T09:09:10','2023-11-31T10:08:33'),
('paulomaggio@gmail.com', 07238659,'2023-09-01T21:05:09', '2023-10-08T23:58:23'),
('lucasadoneudo@gmail.com', 09978768, '2023-05-10T18:17:59', '2023-10-31T17:47:04');



exec sp_columns WSBrasil, login;

