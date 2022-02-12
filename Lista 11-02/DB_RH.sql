create database recursos_humanos;

use recursos_humanos;

create table funcionarios (
id bigint auto_increment primary key,
nomecompleto varchar(60),
idade int,
sexo varchar(50),
funcao varchar(50),
setor varchar(60),
salario bigint
);


insert into funcionarios (nomecompleto, idade, sexo, funcao, setor, salario) 
values ("ze foguete"," 65"," masculino", "soldador", "solda", "2000" ),
("ze anacleudo"," 35"," masculino", "motorista", "trasnporte", "1800" ),
("caio"," 22"," masculino", "developer", "tecno", "5000" ),
("zeca"," 78"," masculino", "contador", "adm", "12000" ),
("mario"," 22"," masculino", "caixa", "operacional", "1200" );

select * from funcionarios;

select * from funcionarios
where salario >= 2000;

select * from funcionarios
where salario < 2000;

update funcionarios 
set salario = "2200"
where id = "2";



