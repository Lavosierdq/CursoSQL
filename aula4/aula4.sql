USE curso_sql;
-- inserindo dados  nos campos 
insert into funcionarios (id, nome,salario,departamento) values (1,'fernando',1400,'TI');
-- pode omitir  o ID porque está configurado com alto increment e ele incrementa automaticamente
insert into funcionarios (nome,salario,departamento) values ('Fabio',1700,'TI');
insert into funcionarios (nome,salario,departamento) values ('Jose',1800,'Marketing');
insert into funcionarios (nome,salario,departamento) values ('Isabela',2200,'Juridico');
-- buscando dados da tabela funcionarios
select * from funcionarios;
--buncando dados de salario onde é acima de 2000
select * from funcionarios where salario > 2000;
select * from funcionarios where  nome = 'Jose';
select * from funcionarios where  id  = '3';
-- atualizando a tabela funcionarios com o comando UPDATE
update funcionarios set salarios =  salario * 1.1 where id = 1;
-- o comando abaixo não irá funcionar devido ao safe update
-- o safe update não permite autalizar toda a tabela, para isso 
-- precisa de um comando...
set SQL_SFAE_UPDATES = 0;
update funcionarios set salarios = salario * 1.1;
-- utilizando o metodo round para definir duas casas decimais de um doubleb
update funcionarios set salario = ROUND (salario * 1.1, 2);

-- instrugção Delete para excluir dados da tabela
delete from funcionarios where id = 4;

insert into veiculos (funcionario_id,veiculo,placa) values (1,'Carro','SB-0001');
insert into veiculos (funcionario_id,veiculo,placa) values (1,'Carro','SB-0002')
select  * from veiculos
--
update veiculos set funcionario_id  = 5 where id = 2;

insert into salarios (faixa,inicio,fim) values  = ('Analista junior',1000,2000);
insert into salarios (faixa,inicio,fim) values  = ("Analiasta Pleno",2000,4000);
select * from salarios;
-- utilizando alias (apelido)  para a tabela e fazendo referencia
select * from salarios f where f.salarios > 2000;
-- utilizando alias ( apelido) para campos da tabela
select nome as 'funcionarios',salario from funcionarios f where f.salario > 2000

-- utilizando a função Union para retornar registros unidos
select * from funcionarios where nome = 'Guilherme'
union 
select * from funcionarions where nome = 'isabela'

-- retornando valores de um campo entre datas 
select data from pedido where data between '2010-04-15' and '2010-04-18';j
