-- 1:Selecione os nomes de todos os alunos que já fizeram 
-- alguma matrícula na Softblue, sem repetição;
select distinct (aluno) from aluno 
inner join curso on aluno.codigo = curso.tipo

-- 2:Exiba o nome do aluno mais antigo da Softblue;
select distinct (aluno.aluno, pedido.data, pedido.hora) from aluno
inner join pedido on data = '2010-04-15' limit 1;

-- 3:Exiba o nome do terceiro aluno mais antigo da Softblue;
select aluno.aluno, pedido.data, pedido.hora from aluno
inner join pedido on pedido.data = '2010-04-15' limit 1 offset 4;

-- 4:Exiba a quantidade de cursos que já foram vendidos pela Softblue;

--5:Exiba o valor total já arrecadado pelos cursos vendidos pela Softblue;

--6:Exiba o valor médio cobrado por curso para o pedido cujo CODIGO é 2;
select avg(valor) from curso where curso.codigo = 2;
--7:Exiba o valor do curso mais caro da Softblue;
select max(valor) from curso;
--8:Exiba o valor do curso mais barato da Softblue;
select min(valor) from curso;
--9:Exiba o valor total de cada pedido realizado na Softblue;

--10:Exiba os nomes dos instrutores da Softblue e a quantidade de cursos 
--que cada um tem sob sua responsabilidade;
select select instrutor.instrutor , curso.curso from instrutor
inner join curso on curso.tipo = instrutor.codigo;
--11:Exiba o número do pedido, nome do aluno e valor para todos os pedidos 
--realizados na Softblue cujo valor total sejam maiores que 500;

