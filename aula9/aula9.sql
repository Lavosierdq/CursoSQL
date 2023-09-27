 -- aula  de Strored Procedures

use curso_sql;
create table pedidos(
  id int unsigned not null auto_increment,
  descricao varchar(100) not null,
  valor double not null default '0',
  pago varchar (3) not null default,
  primary key(id)
);

insert into pedidos(descricao,valor) values ('TV',3000);
insert into pedidos(descricao,valor) values ('Geladeira',1400);
insert into pedidos(descricao,valor) values ('DVD Player',300);

select * from pedidos;
call limpa_pedidos();

-- criando uma stored procedure...
create procedure limpa_pedidos()
begin
  set sql_safe_updates = 0;
  delete from pedidos where pago = 'nao';
end
-- ----------------------------------------------------
-- aula de Triggers

create table estoque(
  id int unsigned not null auto_increment,
  descricao varchar(50) not null,
  quantidade int not null,
)

create trigger gatilho_limpa_pedidos
before insert
on estoque
for each row
  call limpa_pedidos();
