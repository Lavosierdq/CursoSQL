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

insert into aluno(codigo,nome,endereco,email) values (1,'José','Rua XV de novembro','jose@softblue.com.br');
insert into aluno(codigo,nome,endereco,email) values (2,'Wagner','Av.Paulista','Wagner@softblue.com.br');
insert into aluno(codigo,nome,endereco,email) values (3,'Emilio','Rua Lajes 103','emilio@softblue.com.br');
insert into aluno(codigo,nome,endereco,email) values (4,'Cris','Rua Taunei 22','cris@softblue,com.br');
insert into aluno(codigo,nome,endereco,email) values (6,'Fernando','Av.Central 30','fernando@softblue.com.br');

