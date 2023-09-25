-- crie um usuario sql com acesso local e senha

create user 'lavosier'@'localhost' identified by '23@45la'
create user 'graciara'@'locahost' identified by '09876'
create user 'vanderlei'@'localhost' identified by '405691' 

-- 2: crie um usuario com acesso a partir de um ip externo definido

create user 'lavosier'@'200.002.192.168' identified by '123345';
create user 'vanderlei'@'192.168.16.03' identified by '12345';
create user 'thiago'@'10.11.16.163' identified by '098766'
create user 'graciara'@'10.15.10.200'identified by '098765'

-- 3:crie um usuario com acesso a partir de qualquer ip

create user 'lavosier'@'%' identified by '12345';
create user 'vanderlei'@'%' identified by '098765'
create user 'thiago'@'%' identified by '196054'
create user 'graciara'@'%' identified by '465056'

-- 4: crie um usuáro acessando da maquina local dando acesso a todo banco de dados

create user 'lavosier'@'localhosts' identifyed by '12345';
grant all on curso.sql.* to 'lavosier'@'localhost';

create user 'lavosier'@'localhost' identified by '12345'
grant all on curso.sql.* to 'lavosier'@'localhost';

create user 'graciara'@'localhost' identifyed by '12345'
grant all on curso.sql.* to 'graciara'@'localhost';

create 'vanderlei'@'localhost' identified by '12345'
grant all on curso.sql.* to 'vanderlei'@'localhost'

create 'thiago'@'localhost' identified by '098765'
grant all on curso.sql* to 'thiago'@'098766'

-- 5: crie um usuario a partir de um ip especifico e de acesso somente
-- de leitura no bando curso_dql da tabela funcionario
create user 'lavo'@"200.70.50.20" identified by '12345';
grant select curso_sql.funcionario to 'lavo'@'200.70.50.20

-- 6: crie um usuario que posso inserir dados a a tabela professores
-- a partir de qualquer ip;

create user 'graciara'@'%' identified by '12345';
grant insert on curso_sql.professores to 'graciara'@'%';

create user 'vanderlei'@'%' identified by '12345';
grant insert on curso_sql.professores 'vanderlei'@'%';

-- 7: remova a opção do usuario de inserir  dados na tabela funcionario a partir de qualuqer ip
revoke insert on curso_sql.funcionarios from 'vanderlei'@'%';
revoke insert on curso_sql.funcionarios from 'graciara'@'%';
revoke insert on curso_sql.funcionarios from 'lavo'@'%';
revoke insert on curso_sql.funcionarios from  'lavo'@'%';

-- 8:consulte todos os usuarios que foram criados  no banco
select user from mysql.user;

-- 9:delete  um usuario  do systema mysql;
drop user 'lavo'@'localhost';
-- 10: mostre privilegios de um usuário no banco
