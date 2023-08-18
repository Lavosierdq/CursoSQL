use curso_sql;
-- inserindo valores aos atribbutos da tabela tipo
insert into tipo(codigo,tipo) values(1,'banco de dados');
insert into tipo(codigo,tipo) values(2,'programaçao');
insert into tipo(codigo,tipo) values(3,'modelagem de dados');

-- inserindo valores aos atributos da tabela instrutor
insert into instrutor(codigo,instrutor,telefone) values (1,'andre millani',1111-1111);
insert into instrutor(codigo,instrutor,telefone) values (2,'Carlos tosin',1212-1212);

-- inserindo valores na tabela curso
insert into curso(codigo,tipo,instrutor,curso,valor) values (1,2,2,'Java Fundamentos',270);
insert into curso(codigo,tipo,instrutor,curso,valor) values (2,2,2,'Java Avançado',330);
insert into curso(codigo,tipo,instrutor,curso,valor) values (3,1,1,'SQL Completo',170);
insert into curso(codigo,tipo,instrutor,curso,valor) values (4,2,1,'PHP Basico',270);

-- inserindo valores na tablea aluno
insert into aluno(codigo,aluno,endereco,email) values (1,'José','Rua XV de novembro','jose@softblue.com.br');
insert into aluno(codigo,aluno,endereco,email) values (2,'Wagner','Av.Paulista','Wagner@softblue.com.br');
insert into aluno(codigo,aluno,endereco,email) values (3,'Emilio','Rua Lajes 103','emilio@softblue.com.br');
insert into aluno(codigo,aluno,endereco,email) values (4,'Cris','Rua Taunei 22','cris@softblue,com.br');
insert into aluno(codigo,aluno,endereco,email) values (6,'Fernando','Av.Central 30','fernando@softblue.com.br');

-- inserindo valores na tabela pedido, a data insere ano-mes-dia
insert into pedido(codigo,aluno,data,hora) values (1,2,'2010-04-15','11:23:32');
insert into pedido(codigo,aluno,data,hora) values (2,2,'2010-04-15','14:36:21');
insert into pedido(codigo,aluno,data,hora) values (3,3,'2010-04-16','11:17:45');
insert into pedido(codigo,aluno,data,hora) values (4,4,'2010-04-17','11:27:22');
insert into pedido(codigo,aluno,data,hora) values (5,5,'2010-04-18','11:18:19');
insert into pedido(codigo,aluno,data,hora) values (6,6,'2010-04-19','13:47:35');
insert into pedido(codigo,aluno,data,hora) values (7,6,'2010-04-20','18:13:44');

--inserindo valores na tabela pedido_detalhe
insert into pedido_detalhe(pedido,curso,valor) values (1,1,270);
insert into pedido_detalhe(pedido,curso,valor) values (1,2,330);
insert into pedido_detalhe(pedido,curso,valor) values (2,1,270);
insert into pedido_detalhe(pedido,curso,valor) values (2,2,330);
insert into pedido_detalhe(pedido,curso,valor) values (2,3,170);
insert into pedido_detalhe(pedido,curso,valor) values (3,4,270);
insert into pedido_detalhe(pedido,curso,valor) values (4,2,330);
insert into pedido_detalhe(pedido,curso,valor) values (4,4,270);
insert into pedido_detalhe(pedido,curso,valor) values (5,3,170);
insert into pedido_detalhe(pedido,curso,valor) values (6,3,170);
insert into pedido_detalhe(pedido,curso,valor) values (7,4,270);

-- alterando dadas  das tabelas ..

update aluno set endereco = "Av.Brasil 772" where codigo = 1;
update aluno set email = "cristiano@sofblue.com.br" where  codigo = 4;
update curso set valor = valor * 1.1 where valor < 300;
update curso set curso  = "PHP fundamentos" where codigo = 4;
