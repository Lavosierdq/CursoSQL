--  Aula 5 sobre inner joins
--  utilizar o banco de dados

use Curso_sql;

-- selecionar todos os dados da tabela funcionario
select * from funcionario;
-- selecionar  todos os campos da tabela veiculos
select * from veiculos;

-- selecionando inner join  para relacionamento entre tabelas
-- esse codigo vai dar erro porque tem definir os  campos id de cada tabela
select * from funcionarios inner join veiculos on funcionario_id = id;

-- codigo correto para selecionar campos das tabelas
-- campo funcionario_id representa a tabela veiculos e funcionario.id represta a tabela funcnionarios
select * from funcionarios  inner join veiculos on funcionario_id  = funcionaro.id
 --  outra forma de digitar o mesmo comando para organiza-lo melhor
select * from funcionario inner join veiculos on veiculos.funcionario_id = funcionario.id
-- utilizando o mesmo exemplo com alias para diminuir o tamanho da expressão
select * from funcionario f inner join veiculos v on v.funcionario_id = f.id

-- variacoes do join
-- left join para trazer informações da tabela da esquerda
select * from funcionarios f left join veiculos v  on v.funcionario_id = f.id

-- right join para trazer informações da tabela do lado direito
select *from funcionarios f right join veiculos v on v.funcionarios_id = f.id

-- full join para trazer informações de todas as tabelas no relacionamento
-- OBS: Mysql não tem o comando  full join, então usa o comando union

select * from funcinonarios f left join veiculos v on v.funcionario_id = f.id
UNION
select * from funcionarios f right join veiculos v on v.funcionario_id = f.id

-- equi join para mostrar abas  informações  iguais na tabela
select * from funcionarios inner join cpfs using(id)

 --   exemplo de tabela com uma self join
create  table clientes (
  id int unsigned not null auto_increment,
  nome varchar(45) not null,
  quem_indicou int unsigned,
  constraint fk_quem_indicou foreign key(quem_indicou) references clientes(quem_indicou)
);
 --  realizando o auto relacionamento com self join
insert into cliente(id,nome,quem_indicou) values(1,val,null);
insert into cliente(id,nome,quem_indicou) values(2,marcelo,1);
insert into cliente(id,nome,quem_indicou) values(3,lorena,2);
insert into cliente(id,nome,quem_indicou) values(4,graciara,1);

-- comando self join buscando relacionamento com ela mesmo
select a.nome,b.nome from clientes a join clientes b on a.quem_indicou = b.id;

-- colocando mais apelidos para melhorar a leitura dos dados
select a.nome as Cliente, b.nome as Quem_indicou from clientes a join clientes b on a.quem_indicou = b.id;

-- inner  join para 3 ou mais tabelas
select * from funcionarios
inner join veiculos on veiculos.funcionario_id = funcionarios_id
inner join cpfs on cpfs.id = funcionarios.id

 -- criando uma view para consulta  rápida de um campo da tabela
create view funcionarios_a as select * from funcnionarios where salario >= 1700;
-- buscado dados da view
select  * from funcionarios_a;
-- deletando uma view
drop view funcionarios_a;
