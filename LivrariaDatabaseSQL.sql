create table autor (
	id serial primary key,
	nome varchar (60) not null,
	nacionalidade varchar (50) not null
)

select * from autor 

create table editora (
	id serial primary key,
	nome varchar (60) not null
)

select * from editora

create table categoria (
	id serial primary key,
	tipo_categoria varchar(60) not null
)

select * from categoria 

create table livro (
	isbn integer primary key,
	titulo varchar (60) not null,
	ano_publicacao date not null,
	fk_editora integer not null,
	fk_categoria integer not null,
foreign key (fk_editora) references editora (id),
foreign key (fk_categoria) references categoria (id)
)

select * from livro 

create table livroautor (
	id serial primary key,
	fk_livro integer not null,
	fk_autor integer not null,
	foreign key (fk_livro) references livro (isbn),
	foreign key (fk_autor) references autor (id)
)

select * from livroautor 



