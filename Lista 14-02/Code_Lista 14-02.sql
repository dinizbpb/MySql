create database db_generation_game_online;

use db_generation_game_online;


create table tb_classe(
id_classe int primary key not null auto_increment,
tipo varchar(50) not null,
habilidades varchar(50) not null

);

create table tb_personagem(
id_personagem bigint primary key not null auto_increment,
nome varchar(50) not null,
ataque double not null,
defesa double not null,
nivel_experiencia int(50) not null,
sexo enum('M','F') not null,
id_classe int, 
Foreign Key(id_classe) references tb_classe(id_classe)
);

#--------------insert CLASSES---------------------
insert into tb_classe values(null,'feiticeira','tora os inimigos na magia');
insert into tb_classe values(null,'arqueiro','lança flexa nos zoi dos cara');
insert into tb_classe values(null,'sniper','atirar nos zoi dos inimigos');
insert into tb_classe values(null,'curandeiro','joga bebida na ferida');
insert into tb_classe values(null,'hacker','manjador das paradas');

#-----------------insert personagem-----------------------
insert into tb_personagem values(null,'jose',2.100,400,23,'M','1');
insert into tb_personagem values(null,'rafinha',1.900,240,12,'M','2');
insert into tb_personagem values(null,'miguel',1.555,180,14,'M','3');
insert into tb_personagem values(null,'camila',2.320,412,28,'F','4');
insert into tb_personagem values(null,'lara',2.900,300,46,'F','5');
insert into tb_personagem values(null,'joel',1.558,88,100,'M','3');
insert into tb_personagem values(null,'joao',2.100,745,47,'M','2');
insert into tb_personagem values(null,'mateus',5.000,240,16,'M','1');

#-------------------------Select-------------------------
select * from tb_personagem;

select nome,ataque from tb_personagem where ataque>2.000;
select nome,defesa from tb_personagem where defesa>1.000 and defesa<2.000;

select nome,defesa from tb_personagem where defesa between 1000 and 2000;


select * from tb_personagem where nome like '%C%';

Select tb_classe.tipo, tb_classe.habilidades,
tb_personagem.nome, tb_personagem.sexo, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.nivel_experiencia
from tb_classe
inner join tb_personagem
on tb_classe.id_classe=tb_personagem.id_classe;



select * from tb_personagem inner join tb_classe
on id_personagem=id_classe;



Select tb_classe.tipo,tb_personagem.nome, tb_personagem.sexo, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.nivel_experiencia
from tb_classe
inner join tb_personagem
on id_classe=id_classe where tipo='feiticeira';

