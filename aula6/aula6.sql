-- entrando no banco de dados
use curso_sql;

-- buscando todos  os campos  da tabela funcionario
select * from funcionarios;

-- contando todos os registros dos campos da tabela funcionario
select count (*) from funcionarios;

-- contando todos os registros dos campos da tabela funcionario onde 
-- salario é maior que 2000
select count(*) from funcionarios where salario > 2000;

-- contando  todos os registros dos campos da tabela funcionario onde
-- salario é maior que 1600 e departamento  é igual a jurídico
select count(*) from funcionarios where salario > 1600 and departamento = 'juridico';

-- retornar a  soma dos salarios do campo salario da tabela funcionario
select sum(salario) from funcionarios;

-- retornar a soma dos funcionarios do campo salario da tabela funcionario
-- onde departamento é iguala T.I
select sum(salario) from funcionarios where departamento = 'T.I';

--  para retornar a media igual o exemplo anterior
select avg(salario) from funcionarios;

-- media para retornar  somente dos funcinonarios de T.I
select avg(salario) from funcinonarios where departamento = 'T.I';

-- salario maximio(mais alto) da tabela
select max(salario) from funcionarios;

-- seguindo o exemplo anterior
select max(salrio) from funcionarios where departamento = 'T.I';

-- salario minimo(mais baixo) da tabela funcionario;
select min(salario) from funcionarios;

-- seguindo o exemplo anterior
select min(salario) from funcionarios where deparatamento = "T.I";
-- --------------------------------------------------------------

-- retornar somente o campo distinto da tabela sem repetição
select distinct(departamente) from funcionarios;

-- ordenar registros da tabela funcionarios a partir do nome
select * from funcionarios order by nome;

-- ordernar usando dois campos
select * from funcionarios order by nome,salario;

-- ordenar registros da tabela funcionario a partir do nome decrescendo
select * from funcionarios order by nome desc;
-- ordernar registros da tabela funcionario a partir do nome de forma crescente
select * from funcionarios order by nome asc;

-- ------------------------------------------------------------------
-- comandos de paginação
-- limitar somente com dois  registros
select * from funcionarios limit 2;

