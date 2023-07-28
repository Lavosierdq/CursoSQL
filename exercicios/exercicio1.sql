create  database cursoSql
use database cursoSql

create table Tipo(
  Codigo int unsigned auto_increment not null,
  tipo varchar(40) not_null,
  primary key(codigo)
);

create  table Instrutor(
  codigo int unsignet not null auto_increment,
  instrutor varchar (40) not null,
  telefone varchar(10) not null,
  primary key (codigo)
);

create table Curso(
  codigo int unsigned not null auto_increment,
  curso varchar(40) not null,
  tipo int unsigned  not null,
  instrutor int unsigned not null,
  valor double unsigned not null,
  constraint tipo_fk  foreign key (tipo) references Instrutor(instrutor),
  constraint instrutor_fk foreign key(instrutor) references Instrutor(instrutor)
);

-- mudar o nome da colula
alter table Instrutor change column instrutor  nome_instrutor varchar(40) not null;
alter table Curso change column curso nome_curso varchar(40) not null;

-- criar indice
create index index_codigo on Instrutor(codigo);
create index index_codigo on Curso(curso);



