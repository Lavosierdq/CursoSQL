-- exercicio 1
-- crie uma view que mostre o nome do curso e os valores de cada curso
create view curso_view as select curso, valor from curso;
--correcao
create view curso_view as select curso, valor from curso
inner join tipo on curso.tipo = tipo.codigo
where tipo.tipo = 'programacao';

-- exercicio2
-- crie uma visão que traga os titulos dos cursos, tipo do curso e 
-- nome do instrutor

create view curso_view as select curso.curso, tipo.tipo, instrutor.instrutor 
from curso
inner join tipo on curso.codigo = tipo.codigo
inner join instrutor on instrutor.codigo = tipo.codigo;

-- exercicio3
create view curso_view as select pedido.codigo,pedido.data,pedido.hora,aluno.aluno from pedido
inner join aluno on pedido.codigo = aluno.codigo;


create view curso_view as select pedido.codigo,pedido.data, pedido.hora,aluno.aluno from pedido
inner join aluno on pedido.codigo = aluno.codigo

select aluno as 'nome' from aluno A where A.codigo > 1;
select aluno as 'nome' from aluno A where A.codigo > 1;
