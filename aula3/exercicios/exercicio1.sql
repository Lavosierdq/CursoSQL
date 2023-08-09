create  database cursoSql
use database cursoSql

create table tipo(
  Codigo int unsigned auto_increment not null,
  tipo varchar(40) not null,
  primary key(codigo)
);

create  table instrutor(
  codigo int unsigned not null auto_increment,
  instrutor varchar (40) not null,
  telefone  varchar (10) not null,
  primary key (codigo)
);

create table curso(
  codigo int unsigned not null auto_increment,
  tipo   int unsigned,
  instrutor int unsigned,
  curso varchar(40) not null,
  valor double unsigned not null,
  primary key (codigo),
  constraint tipo_fk  foreign key (tipo) references tipo (codigo),
  constraint instrutor_fk foreign key(instrutor) references instrutor(codigo)
);
create table aluno(
  codigo int unsigned not null auto_increment,
  aluno varchar (40) not null,
  endereco varchar(40) not null,
  email varchar(40) not null,
  primary key (codigo)
);
create table pedido (
  codigo int unsigned not null auto_increment,
  aluno  int unsigned note null auto_increment,
  data date,
  horario time,
  PRIMARY KEY(codigo),
  constraint aluno_fk FOREIGN KEY(aluno) REFERENCES aluno(codigo)
);

create table pedido_detalhe(
  codigo int unsigned not null auto_increment,
  curso int unsigned not null,
  valor double unsigned not null
  PRIMARY KEY(codigo),
  Constraint curso_fk FOREIGN KEY(curso) REFERENCES curso(codigo)
);

alter table aluno add column data_nascimento varchar (10);
alter table aluno change column data_nascimento nascimento date
alter table instrutor add column email varchar(100);

-- mudar o nome da colula
alter table instrutor change column instrutor nome_instrutor varchar(40) not null;
alter table Curso change column curso nome_curso varchar(40) not null;
-- remover o campo de uma tabela
alter table instrutor drop column email;
-- criar indice
create index index_codigo on instrutor(codigo);
create index index_codigo on curso(curso);
create index index_aluno on aluno(aluno);
create index index_curso on curso(instrutor);
