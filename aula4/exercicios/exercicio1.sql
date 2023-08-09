use curso_sql;
-- inserindo valores aos atribbutos da tabela tipo
insert into tipo(codigo,tipo) values(1,'banco de dados')
insert into tipo(codigo,tipo) values(2,'programaçao');
insert into tipo(codigo,tipo) values(3,'modelagem de dados');
-- inserindo valores aos atributos da tabela instrutor

insert into instrutor(codigo,instrutor,telefone) values (1,'andre millani',1111-1111);
insert into instrutor(codigo,instrutor,telefone) values (2,'Carlos tosin',1212-1212);

-- inserindo valores na tabela curso
insert into curso(codigo,tipo,instrutor,curso,valor) values (1,2,2,'Java Fundamentos',270);
insert into curso(codigo,tipo,instrutor,curso,valor) values (2,2,2,'Java Avançado',330);
insert into curso(codigo,tipo,instrutor,curso,valor) values (3,1,1,'SQL Completo',170);
insert into curso(codigo,tipo,instrutor,curso,valor) values (4,'PHP Basico',2,1,270);

-- inserindo valores na tablea aluno
insert into aluno(codigo,nome,endereco,email) values (1,'José','Rua XV de novembro','jose@softblue.com.br');
insert into aluno(codigo,nome,endereco,email) values (2,'Wagner','Av.Paulista','Wagner@softblue.com.br');
insert into aluno(codigo,nome,endereco,email) values (3,'Emilio','Rua Lajes 103','emilio@softblue.com.br');
insert into aluno(codigo,nome,endereco,email) values (4,'Cris','Rua Taunei 22','cris@softblue,com.br');
insert into aluno(codigo,nome,endereco,email) values (6,'Fernando','Av.Central 30','fernando@softblue.com.br');

-- inserindo valores na tabela pedido
insert into pedido(codigo,aluno,data,horario) values (1,2,'15-04-2010','11:23:32');
insert into pedido(codigo,aluno,data,horario) values (2,2,'15-04-2010','14:36:21');
insert into pedido(codigo,aluno,data,horario) values (3,3,'16-04-2010','11:17:45');
insert into pedido(codigo,aluno,data,horario) values (4,4,'17-04-2010','11:27:22');
insert into pedido(codigo,aluno,data,horario) values (5,5,'18-04-2010','11:18:19');
insert into pedido(codigo,aluno,data,horario) values (6,6,'19-04-2010','13:47:35');
insert into pedido(codigo,aluno,data,horario) values (7,6,'20-04-2010','18:13:44');

--inserindo valores na tabela pedido_detalhe
insert into pedido_detalhe(codigo,curso,valor) values (1,1,270);
insert into pedido_detalhe(codigo,curso,valor) values (1,2,330);
insert into pedido_detalhe(codigo,curso,valor) values (2,1,270);
insert into pedido_detalhe(codigo,curso,valor) values (2,2,330);
insert into pedido_detalhe(codigo,curso,valor) values (2,3,170);
insert into pedido_detalhe(codigo,curso,valor) values (3,4,270);
insert into pedido_detalhe(codigo,curso,valor) values (4,2,330);
insert into pedido_detalhe(codigo,curso,valor) values (4,4,270);
insert into pedido_detalhe(codigo,curso,valor) values (5,3,170);
insert into pedido_detalhe(codigo,curso,valor) values (6,3,170);
insert into pedido_detalhe(codigo,curso,valor) values (7,4,270);



