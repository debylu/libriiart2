create database Libriiat;

create table orcamento(
   nome char(9)primary key,
   telefone varchar(60)not null,
   email varchar(40)not null,
   quantidade varchar(40)not null,
    produto varchar(40)not null,
   observacao varchar(2)not null);