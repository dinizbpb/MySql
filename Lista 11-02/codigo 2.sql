create database db_construindo_a_nossa_vida;

use db_loja_virtual;


create table tb_categoria(
id_categoria int primary key not null auto_increment,
nome varchar(50) not null,
tipo enum ('Profissional','Domestico') not null
);

create table tb_produto(
id_produto bigint primary key not null auto_increment,
nome varchar(50) not null,
marca varchar(50) not null,
preco double(5,2) not null,
id_categoria int, 
Foreign Key(id_categoria) references tb_categoria(id_categoria)
);


insert into tb_categoria values(null,'cozinha','Profissional');
insert into tb_categoria values(null,'cozinha','Domestico');

insert into tb_categoria values(null,'maquinario','Profissional');
insert into tb_categoria values(null,'maquinario','Domestico');

insert into tb_categoria values(null,'ultilitarios','Profissional');
insert into tb_categoria values(null,'ultilitarios','Domestico');


insert into tb_produto values(null,'Mesa','MD',120.00,2);
insert into tb_produto values(null,'mixer','eletrolux',180.00,1);
insert into tb_produto values(null,'batedeira','arno',220.00,3);
insert into tb_produto values(null,'frizer','brastemp',800.00,4);

insert into tb_produto values(null,'torradeira','mondial',80.00,6);
insert into tb_produto values(null,'processador','arno',160.00,5);
insert into tb_produto values(null,'liquificador','phillips',110.00,6);
insert into tb_produto values(null,'microondas','eletrolux',435.00,4);




select * from tb_produto;

select nome,preco from tb_produto where preco>50.00;
select nome,preco from tb_produto where preco>3.00and preco<60.00;

select * from tb_produto where nome like '%C%';

Select tb_categoria.nome, tb_categoria.tipo,
tb_produto.nome, tb_produto.marca, tb_produto.preco
from tb_categoria
inner join tb_produto
on tb_categoria.id_categoria=tb_produto.id_categoria;


Select tb_categoria.nome,tb_categoria.tipo,tb_produto.nome,tb_produto.marca, tb_produto.preco
from tb_categoria
inner join tb_produto
on id_categoria=id_categoria where tipo='Domestico';