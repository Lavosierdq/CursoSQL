/* 1:Utilizando subquery, exiba uma lista com os nomes dos
cursos disponibilizados pela Softblue informando para cada 
curso qual o seu menor valor de venda já praticado;
*/

select curso.curso from curso where curso in (
  select curso from curso group by valor having min(valor)
);

-- Resposta
select curso, (select min(valor) from pedido_detalhe 
  where pedido_detalhe.curso = curso.codigo) as menor_valor from curso;

select curso,(select min(valor)from pedido_detalhe
where pedido_detalhe.curso = curso.codigo) as menor_valor from curso

/*
  Ressalvas para a resposta..
  select curso -> seleciona a tabela curso
  select min(valor) from pedido_detalhe; -> seleciona o atributo valor da tabela pedido_detalhe.
  wherer pedido_detalhe.curso = curso.codigo -> seleciona o atributo de acordo com a condição.
  as menor_valor -> criou uma alias  do atributo valor renomeado como menor_valor -> criou uma alias  do atributo valor renomeado como menor_valor.
  from curso -> vindo da tabela curso.
*/
-- -------------------------------------------------------------------------------------
/*
  2:Utilizando subquery e o parâmetro IN, exiba os nomes dos cursos 
  disponibilizados pela Softblue cujo tipo de curso seja 'Programação';
*/

select curso from curso where curso in (
  select tipo from curso where curto.tipo  = 2 order by
);

-- Resposta
select curso from curso where tipo in(
  select codigo from tipo where tipo = 'programacao'
)

select curso,tipo.tipo from curso where tipo in (
  select codigo from tipo where tipo = 'programaçao'
);

---------------------------------------------------------------------------------------------
/*
  3:Utilizando subquery e o parâmetro EXISTS, exiba novamente os nomes dos
  cursos disponibilizados pela Softblue cujo tipo de curso seja 'Programação';
*/

select curso from curso where  exists(
  select codigo from tipo where tipo  = 'programaçao'
);

select curso from curso where exists(
  select codigo from tipo where tipo = 'programacao'
)
---------------------------------------------------------------------------------------------
/*
  4:Exiba uma lista com os nomes dos instrutores da Softblue e ao lado 
  o total acumulado das vendas referente aos cursos pelo qual o instrutor 
  é responsável;
*/

select instrutor from instrutor where  instrutor in(
  select curso from pedido_detalhe where instrutor.codigo = pedido_detalhe.pedido
  group by instrutor having sum(valor);
)

-- Resposta
select instrutor,(select sum(pedido_detalhe.valor) from pedido_detalhe 
  inner join curso on pedido_detalhe.curso = curso.codigo
  where curso.instrutor = instrutor.codigo)
  as total_de_vendas from instrutor;

select instrutor,(select sum(pedido_detalhe.valor)from pedido_detalhe
  inner join curso on pedido_detalhe.curso = curso.codigo
  where curso.instrutor = instrutor.codigo
)as total_vendas from instrutor
  -------------------------------------------------------------------------------------------
/*
  5:Crie uma visão que exiba os nomes dos alunos e quanto cada um já 
  comprou em cursos;
*/

create view select nome (
  select avg(valor) from pedido_detalhe
  inner join pedido on pedido.aluno = pedido_detalhe.curso
  order by valor
)
from curso;
-- Resposta
CREATE VIEW ALUNOS_E_COMPRAS AS SELECT ALUNO,
  (SELECT SUM(PEDIDO_DETALHE.VALOR) FROM PEDIDO_DETALHE 
    INNER JOIN PEDIDO ON PEDIDO_DETALHE.PEDIDO = PEDIDO.CODIGO 
    WHERE PEDIDO.ALUNO = ALUNO.CODIGO) 
AS TOTAL_DE_COMPRAS FROM ALUNO;


