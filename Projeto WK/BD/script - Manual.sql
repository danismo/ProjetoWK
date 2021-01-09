create table PRODUTOS (
	ID integer not null primary key,
    DESCRICAO varchar(100),
    PRECO numeric(9,2)
);

alter table PRODUTOS change ID ID integer not null AUTO_INCREMENT;

insert into produtos(DESCRICAO,PRECO) values ('Produto 1' ,10.10);
insert into produtos(DESCRICAO,PRECO) values ('Produto 2' , 9.09);
insert into produtos(DESCRICAO,PRECO) values ('Produto 3' , 8.08);
insert into produtos(DESCRICAO,PRECO) values ('Produto 4' , 7.07);
insert into produtos(DESCRICAO,PRECO) values ('Produto 5' , 6.06);
insert into produtos(DESCRICAO,PRECO) values ('Produto 6' , 5.05);
insert into produtos(DESCRICAO,PRECO) values ('Produto 7' , 4.04);
insert into produtos(DESCRICAO,PRECO) values ('Produto 8' , 3.03);
insert into produtos(DESCRICAO,PRECO) values ('Produto 9' , 2.02);
insert into produtos(DESCRICAO,PRECO) values ('Produto 10', 1.01);
insert into produtos(DESCRICAO,PRECO) values ('Produto 11',10.11);
insert into produtos(DESCRICAO,PRECO) values ('Produto 12', 9.12);
insert into produtos(DESCRICAO,PRECO) values ('Produto 13', 8.13);
insert into produtos(DESCRICAO,PRECO) values ('Produto 14', 7.14);
insert into produtos(DESCRICAO,PRECO) values ('Produto 15', 6.15);
insert into produtos(DESCRICAO,PRECO) values ('Produto 16', 5.16);
insert into produtos(DESCRICAO,PRECO) values ('Produto 17', 4.17);
insert into produtos(DESCRICAO,PRECO) values ('Produto 18', 3.18);
insert into produtos(DESCRICAO,PRECO) values ('Produto 19', 2.19);
insert into produtos(DESCRICAO,PRECO) values ('Produto 20', 1.20);


create table CLIENTES (
	ID integer not null primary key,
	NOME varchar(150),
	CIDADE varchar(80),
	UF char(2)
);

alter table CLIENTES change ID ID integer not null AUTO_INCREMENT;

insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 1' , 'MUNICIPIO 1' , 'SC');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 2' , 'MUNICIPIO 2' , 'PR');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 3' , 'MUNICIPIO 3' , 'PR');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 4' , 'MUNICIPIO 4' , 'RS');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 5' , 'MUNICIPIO 5' , 'RS');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 6' , 'MUNICIPIO 6' , 'AC');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 7' , 'MUNICIPIO 7' , 'SC');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 8' , 'MUNICIPIO 8' , 'RJ');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 9' , 'MUNICIPIO 9' , 'SP');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 10', 'MUNICIPIO 10', 'TO');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 11', 'MUNICIPIO 1' , 'SC');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 12', 'MUNICIPIO 2' , 'PR');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 13', 'MUNICIPIO 3' , 'PR');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 14', 'MUNICIPIO 4' , 'RS');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 15', 'MUNICIPIO 5' , 'RS');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 16', 'MUNICIPIO 6' , 'AC');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 17', 'MUNICIPIO 7' , 'SC');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 18', 'MUNICIPIO 8' , 'RJ');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 19', 'MUNICIPIO 9' , 'SP');
insert into CLIENTES(NOME,CIDADE,UF) values ('CLIENTE 20', 'MUNICIPIO 10', 'TO');

create table PEDIDO_DADOS_GERAIS (
    NUM_PEDIDO integer not null primary key,
    CLIENTE_CODIGO integer,
    DATA_EMISSAO date,
    TOTAL numeric(18,2)
);

create table PEDIDO_PRODUTOS(
    ID integer not null primary key,
    NUM_PEDIDO integer,
    ID_PRODUTO integer,
    QUANTIDADE numeric(9,2),
    VLR_UNITARIO numeric (9,2),
    VLR_TOTAL numeric (18,2)
);   
    
alter table PEDIDO_PRODUTOS add constraint FK_PEDIDO  foreign key (NUM_PEDIDO) references PEDIDO_DADOS_GERAIS(NUM_PEDIDO);
alter table PEDIDO_PRODUTOS add constraint FK_PRODUTO foreign key (ID_PRODUTO) references PRODUTOS(ID);

ALTER TABLE pedido_produtos CHANGE ID ID INT(11) NOT NULL AUTO_INCREMENT; 
