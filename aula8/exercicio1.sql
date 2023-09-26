/* 1:exercicios - Baseado na tabela, construa uma transação que atualiza o 
valor aplicado em cada conta bancária baseado no índice de correção 
percentual de 3%, garantindo que a instrução de UPDATE seja realizada 
na tabela toda, com as propriedades ACID.
*/

create table conta_bancaria(
  codigo integer unsigned not null auto_increment,   -- codigo interno(pk)
  titular varchar(32) not null, -- nome do titular da conta
  saldo double not null, -- representa o saldo da conta
  primary key(codigo) -- define o campo "codigo" como PK (primary key)
)engine = InnoDB; -- representa e engine que ira fazer transações

insert into conta_bancaria values (1,'andre',213);
insert into conta_bancaria values (2,'diogo',489);
insert into conta_bancaria values (3,'rafael',568);
insert into conta_bancaria values (4,'carlos',712);
insert into conta_bancaria values (5,'lavo',-38);

start transaction;
update conta_bancaria set saldo where saldo = saldo *1.03 where saldo > 0;
commit;

create  table  conta_bancaria(
  codigo int unsigned not null auto_increment,
  titular varchar(35) not null,
  saldo double  not null,
  primary key (codigo)
)engine = InnoDb;


insert into conta_bancaria values(1,'maria',1000);
insert into conta_bancaria values(2,'deco',2000);
insert into conta_bancaria values(3,'lorena',3000);
insert into conta_bancaria values(4,'graci',4000);
insert into conta_bancaria values(5,'adriano',5000);


update conta_bancaria set saldo where saldo  = saldo*1.03 where saldo > 0;
