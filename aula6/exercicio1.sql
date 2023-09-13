-- 1:Selecione os nomes de todos os alunos que já fizeram 
-- alguma matrícula na Softblue, sem repetição;
select distinct (aluno) from aluno 
inner join curso on aluno.codigo = curso.tipo;
--Resposta
select distinct(aluno.aluno) from pedido 
inner join aluno on pedido.aluno = aluno.codigo;
-- -----------------------------------------------------------------
-- 2:Exiba o nome do aluno mais antigo da Softblue;
select distinct (aluno.aluno, pedido.data, pedido.hora) from aluno
inner join pedido on data = '2010-04-15' limit 1;
-- Resposta pessoal 2
select distinct(aluno.aluno), pedido.data from pedido
inner join aluno on pedido.aluno = aluno.codigo
order by data asc limit 1;
-- Resposta
select distinct(aluno.aluno) from pedido
inner join aluno  on pedido.aluno = aluno.codigo 
order by datahora asc limit 1;
--------------------------------------------------------------------
-- 3:Exiba o aluno mais recente da softblu3
select distinct(aluno.aluno),pedido.data from pedido
inner join aluno on pedido.aluno = aluno.codigo
order by data desc limit 1;
--------------------------------------------------------------------
-- 4:Exiba o nome do terceiro aluno mais antigo da Softblue;
select aluno.aluno, pedido.data, pedido.hora from aluno
inner join pedido on pedido.data = '2010-04-15' limit 1 offset 4;
-- Resposta pessoal 2
select distinct(aluno.aluno), pedido.data from pedido
inner join aluno on aluno.codigo = pedido.aluno
order by data asc limit 1 offset 2;
----------------------------------------------------------------------
-- 5:Exiba a quantidade de cursos que já foram vendidos pela Softblue;
select count(*) from pedido_detalhe;
-- Resposta pessoal
select count(pedido) from pedido_detalhe;
-----------------------------------------------------------------------
-- 6:Exiba o valor total já arrecadado pelos cursos vendidos pela Softblue;
select sum(valor) from pedido_detalhe;
------------------------------------------------------------------------
-- 7:Exiba o valor médio cobrado por curso para o pedido cujo CODIGO é 2;
select avg(valor) from pedido_detalhe where pedido_detalhe.pedido = 2;
------------------------------------------------------------------------
-- 8:Exiba o valor do curso mais caro da Softblue;
select max(valor) from curso;
------------------------------------------------------------------------
-- 9:Exiba o valor do curso mais barato da Softblue;
select min(valor) from curso;
------------------------------------------------------------------------
-- 10:Exiba o valor total de cada pedido realizado na Softblue;

select count(*) from pedido;
--Resposta
select pedido, sum(valor) from pedido_detalhe group by pedido;
------------------------------------------------------------------------
--11:Exiba os nomes dos instrutores da Softblue e a quantidade de cursos 
--que cada um tem sob sua responsabilidade;
select instrutor.instrutor , curso.curso from instrutor
inner join curso on curso.tipo = instrutor.codigo;
 -- Resposta
select instrutor.instrutor, count(*) from curso
inner join instrutor on instrutor.codigo = curso.codigo
group by instrutor;
------------------------------------------------------------------------
--12:Exiba o número do pedido, nome do aluno e valor para todos os pedidos 
--realizados na Softblue cujo valor total sejam maiores que 500;
select select pedido_detalhe.pedido,curso.valor, aluno.aluno from pedido_detalhe
inner join curso on curso.valor > 200
inner join aluno on aluno.aluno = 'Fernando';
------------------------------------------------------------------------
-- 13: Exiba o número do pedido, nome do aluno e quantos cursos foram 
-- comprados no pedido para todos os pedidos realizados na Softblue que 
-- compraram dois ou mais cursos;
select max (pedido_detalhe.pedido), aluno.aluno, curso.codigo from pedido_detalhe 
inner join aluno on aluno.aluno = 'Fernando' 
inner join curso on curso.codigo = pedido_detalhe.pedido;
------------------------------------------------------------------------
-- 14: Exiba o nome e endereço de todos os alunos que morem em Avenidas (Av.);
select aluno.aluno, aluno.endereco from aluno order by  = 'Av'
------------------------------------------------------------------------
-- 15: Exiba os nomes dos cursos de Java da Softblue;
select curso from curso group by curso;
