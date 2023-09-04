-- exercicio1
--exiba uma lista com os títulos dos cursos da softblue e os tipos de curso ao lado

show databases;
use  curso_sql;
show tables;
describe curso;
select from * curso;


-- clear screen ;  limpar a tela ctrl + L
select * from curso inner join tipo on tipo.codigo = curso.codigo;
select * from curso inner join tipo on tipo.codigo = curso.codigo;
select * from curso inner join tipo on tipo.codigo = curso.codigo;
select * from curso inner join tipo on tipo.codigo = cruso.codigo;
select * from curso inner join tipo on tipo.codigo = curso.codigo;
select * from curso inner join tipo on tipo.codigo = curso.codigo;
select * from curso inner join tipo on tipo.codigo = curso.codigo;
select * from curso inner join tipo on tipo.codigo = curso.codigo;
select * from curso inner join tipo on tipo.codigo = curso.codigo;

select curso.curso, tipo.tipo from curso inner join tipo on curso.curso,tipo.tipo;
select curso.curso, tipo.tipo from curso inner join tipo on curso.curso,tipo.tipo;
select curso.curso, tipo.tipo from curso inner join tipo on curso.curso,tipo.tipo;
select curso.curso, tipo.tipo from curso inner join tipo on curso.curso,tipo 
--exercicio 2 
-- exiba uma lista com os titulos dos cursos, tipo de curso, nome do instrutor
-- responsavel pelo mesmo  e telefone
select * from curso
inner join tipo on tipo.codigo = curso.codigo
inner join instrutor on instrutor.codigo = curso.codigo;

-- correção
select curso.curso, tipo.tipo, instrutor.instrutor, instrutor.telefone from curso
inner join tipo on curso.tipo  = tipo.codigo
inner join instrutor on curso.instrutor = instrutor.codigo;
