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

select curso.curso, tipo.tipo, instrutor.instrutor, instrutor.telefone from curso
inner join tipo on curso.tipo =  tipo.codigo
inner join instrutor on curso.instrutor = instrutor.codigo;

-- exercicio 3 
-- exiba uma lista  com codigo, data e hora dos pedidos  e os codigos dos 
-- curso de cada pedido

select pedido.codigo,pedido.hora,pedido.data from pedido_detalhe
inner join  pedido on pedido.codigo = pedido_detalhe.codigo;

-- exercicio 4
-- Exiba uma lista com o código e data e hora dos pedidos e 
-- os títulos dos cursos de cada pedido;

select pedido.codigo,pedido.data,pedido.hora,curso.curso from pedido_detalhes
inner join pedido_detalhe on pedido.codigo = pedido_detalhe.codigo;

-- correção
select pedido.codigo,pedido.data, pedido.hora,curso.curso from pedido
inner join pedido_detalhe on pedido.codigo = pedito_detalhe.pedido
inner join curso on pedido_detalhe.curso = curso.codigo;

-- exercicio 5
-- Exiba uma lista com o código e data e hora dos pedidos,
-- nome do aluno e os títulos dos cursos de cada pedido;

select pedido.codigo, pedido.data, pedido.hora, curso.curso, aluno.aluno from pedido
inner join curso on pedido.codigo = curso.codigo
inner join aluno on codigo.codigo = aluno.codigo;

correção
select pedido.codigo,pedido.data,pedido.hora, curso.curso, aluno.aluno from pedido
inner join pedido_detalhe on pedido.codigo = pedido_detalhe.pedido
inner join curso on pedido_detalhe.curso = curso.codigo
inner join aluno on pedido.aluno = aluno.codigo;

