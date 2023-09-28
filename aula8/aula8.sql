-- aula 8 sobre transações.
-- iniciando o banco de dados
use curso_sql;
-- comando que mostra mecanismos do mysql
show engines;
-- depois do comando show engines localizar a engine que tem supoerte
-- a transações, no caso será usado o innoDB.

create table contas_bancarias(
  id int unsigned not null auto_increment,
  titular varchar(45) not null,
  saldo double not null,
  primary key(id)
)engine  = InnoDB;

insert into contas_bancarias (titular,saldo) values ('andre', 1000);
insert into contas_bancarias (titular,saldo) values ('carlos',2000);

select * from condtas_bancarias;
-- comando para iniciar transação
start transaction;
update contas_bancarias set saldo = saldo - 100 where id = 1;
update contas_bancarias set saldo = saldo + 100 where id = 2; 

-- retorna a transaçao se caso der errado
rollback ;

-- confirma a transação se tudo foi confirmado
commit;
