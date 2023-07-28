-- criar banco de dados
create database Curso_sql
-- usar o banco de dados
use database Curso_sql
-- criar tabelas;

create table funcinonarios (
  id int unsigned not null auto_increment,
  nome varchar(45) not null,
  salario double not null default '',
  departamento varchar(45) not null,
  PRIMARY KEY(id)
);

create table veiculos (
  id int unsigned  not null auto_increment,
  funcionario_id int unsigned default not null '',
  veiculo varchar(10) not null default '',
  primary key (id),
  constraint fk_veiculos_funcionarios foreign key (funcionarios_id) references funcionarios(id)
);

create  table salarios(
  faixa varchar(45) not null,
  inicio double not null,
  fim double not null,
  primary key (faixa)
)
-- mudar o nome do campo para outro nome
alter table funcionarios change column nome nome_funcionario varchar (45) not null;
alter table funcionarios change column nome_funcionario nome varchar (45) not null;

-- deletar tabela
drop table salarios;
drop table funcionarios;

-- criar um indice de um atributo 
create index nomeIndex on veiculos (funcionario_id);
create index nomeIndex on funcionarios(nome(6));



