-- arquivo da  sétima aula sobre controle de acessos

-- comando para criar um usuário para controle de acesso

-- create  'usuario'@'local' identified by 'senha'
create user 'andre'@'200.200.190.190' identified by '123456';

-- a partir da propria maquina
create user 'andre'@'localhost' identified by '123456';

-- a partir de qualquer ip
create user 'andre'@'%' identified by '123456';
-- -----------------------------------------------------------------

-- dando fornecimento de acesso a todo banco de dados a partir de um localhost
create user 'andre'@'localhost' identified by'12345';
grant all on curso_sql. * to 'andre'@'localhost';

-- dando acesso somente para ler dados usando select a partir de qualquer ip
create user 'andre'@'%' identified by '2388858';
grant select on curso_sql.* to 'andre'@'%';

-- dando acesso somente a escrita de dados em todas as tabelas usando insert a partir de qualquer ip
create user 'andre'@'%' identified by '12345';
grant insert on curso_sql.* to 'andre'@'%';

-- dando acesso somente na tabela funcionario usando insert para inserir dados a partir de qualquer ip
create user 'andre'@'%' indentified by '123456'
grant insert on curso_sql. funcionario 'andre'@'%';

-- -------------------------------------------------------------------
/* comando revoke para remover acesso
 --removendo acesso do comando Insert utilizando revoke da tabela funcnionarios
*/

revoke insert on curso_sql.funcionarios from 'andre'@'%';

-- removendo acesso total de usuario a partir de qualquer ip
revoke all on curso_sql.* from 'andre'@'%';

-- deletando usuarios  do banco com o comando drop
-- deletando usuario andre que tem acesso a partir de qualquer ip
drop user 'andre'@'%';
-- deletando usuario andre que tem acesso a partir do local host
drop user 'andre'@'localhost'
-- ---------------------------------------------------------------------------

-- consultar usuários que foram criados para acessar o banco
select user from mysql.user;
-- identificando privilégios do usuário no banco
show grants for 'andre'@'localhost';

