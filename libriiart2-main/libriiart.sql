drop database if exists libriiart;

create DATABASE libriiart character set utf8 collate utf8_general_ci;
use libriiart;

create table cliente(
cpf char(12) not null primary key,
nome varchar(60) not null,
telefone varchar(15) not null,
email varchar(40) not null,
cep char(9) not null,
numerocasa integer not null,
complemento varchar(30));

create table funcionario(
matricula integer primary key auto_increment,
nome varchar(60) not null,
telefone varchar(15) not null,
cpf char(12) not null,
cep char(9) not null,
numerocasa integer not null,
complemento varchar(30)not null);



create table orcamento(
idpedido  integer primary key auto_increment,
cpf char(12) not null,
data date not null,
entrega date not null,
matricula integer not null,
foreign key(matricula)references funcionario(matricula),
foreign key(cpf) references cliente(cpf));

create table produtos(
idproduto integer primary key auto_increment,
nome varchar(60) not null,
cor varchar(30) not null,
quantidade interger not null,
descricao varchar(60) not null,
tamanho varchar(60) not null);



create table item(
iditem integer primary key auto_increment,
idpedido integer not null,
quantidade interger  not null,
idproduto integer not null,
foreign key(idpedido)references orcamento(idpedido),
foreign key(idproduto)references produtos(idproduto));







