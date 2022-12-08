-- Criando o Banco de Dados
create database digitalCine;

use digitalCine;

-- Criando as entidades com seus respectivos atributos
create table clientes(
cliente_id int not null auto_increment primary key,
nome varchar(100) not null,
sobrenome varchar(100) not null,
cpf varchar(15) not null,
data_nascimento date,
senha varchar(250) not null,
email varchar(200) not null);

create table telefones(
telefone_id int not null auto_increment primary key,
ddi int not null,
ddd int not null,
celular int not null,
telefone_fixo int,
cliente_id int,
foreign key (cliente_id) 
	references clientes(cliente_id),
constraint fk_clientes_telefones
	foreign key (cliente_id)
    references clientes(cliente_id));

create table enderecos(
endereco_id int not null auto_increment primary key,
cep varchar(10) not null,
logradouro varchar(200) not null,
estado char(2) not null,
cidade varchar(50) not null,
complemento varchar(50),
numero int not null,
cliente_id int,
foreign key (cliente_id)
	references clientes(cliente_id),
constraint fk_clientes_enderecos
	foreign key (cliente_id)
    references clientes(cliente_id));

create table diretores(
diretor_id int not null auto_increment primary key,
nome varchar(150));

create table filmes(
filme_id int not null auto_increment primary key,
titulo varchar(100) not null,
ano_lancamento date,
classificacao varchar(10),
diretor_id int,
foreign key (diretor_id)
	references diretores(diretor_id),
constraint fk_diretores_filmes
	foreign key (diretor_id)
    references diretores(diretor_id)
);
    
create table series(
serie_id int not null auto_increment primary key,
titulo varchar(100) not null,
ano_lancamento date,
classificacao varchar(10),
diretor_id int,
foreign key (diretor_id)
	references diretores(diretor_id),
constraint fk_diretores_series
	foreign key (diretor_id)
    references diretores(diretor_id)
);

create table novelas(
novela_id int not null auto_increment primary key,
titulo varchar(100) not null,
ano_lancamento date,
classificacao varchar(10),
diretor_id int,
foreign key (diretor_id)
	references diretores(diretor_id),
constraint fk_diretores_novelas
	foreign key (diretor_id)
    references diretores(diretor_id)
);
    
create table temporadas(
temporada_id int not null auto_increment primary key,
n_temporada int not null,
serie_id int,
foreign key (serie_id)
	references series(serie_id),
constraint fk_series_temporada
	foreign key (serie_id)
    references series(serie_id));

create table episodios(
episodio_id int not null auto_increment primary key,
nome varchar(150),
temporada_id int,
foreign key (temporada_id)
	references temporadas(temporada_id),
constraint fk_temporadas_episodios
	foreign key (temporada_id)
    references temporadas(temporada_id),
novela_id int,
foreign key (novela_id)
	references novelas(novela_id),
constraint fk_novelas_episodios
	foreign key (novela_id)
    references novelas(novela_id)
);

create table elenco(
elenco_id int not null auto_increment primary key,
nome varchar(150),
filme_id int,
foreign key (filme_id)
	references filmes(filme_id),
constraint fk_filmes_elenco
	foreign key (filme_id)
    references filmes(filme_id),
serie_id int,
foreign key (serie_id)
	references series(serie_id),
constraint fk_series_elenco
	foreign key (serie_id)
    references series(serie_id),
novela_id int,
foreign key (novela_id)
	references novelas(novela_id),
constraint fk_novelas_elenco
	foreign key (novela_id)
    references novelas(novela_id)
);

create table generos(
genero_id int not null auto_increment primary key,
genero varchar(50),
filme_id int,
foreign key (filme_id)
	references filmes(filme_id),
constraint fk_filmes_generos
	foreign key (filme_id)
    references filmes(filme_id),
serie_id int,
foreign key (serie_id)
	references series(serie_id),
constraint fk_series_generos
	foreign key (serie_id)
    references series(serie_id),
novela_id int,
foreign key (novela_id)
	references novelas(novela_id),
constraint fk_novelas_generos
	foreign key (novela_id)
    references novelas(novela_id)
);

create table idiomas(
idioma_id int not null auto_increment primary key,
idioma varchar(50) not null,
filme_id int,
foreign key (filme_id)
	references filmes(filme_id),
constraint fk_filmes_idiomas
	foreign key (filme_id)
    references filmes(filme_id),
serie_id int,
foreign key (serie_id)
	references series(serie_id),
constraint fk_series_idiomas
	foreign key (serie_id)
    references series(serie_id),
novela_id int,
foreign key (novela_id)
	references novelas(novela_id),
constraint fk_novelas_idiomas
	foreign key (novela_id)
    references novelas(novela_id)
);

create table minhas_listas(
minha_lista_id int not null auto_increment primary key,
filme_id int,
foreign key (filme_id)
	references filmes(filme_id),
constraint fk_filmes_minhas_listas
	foreign key (filme_id)
    references filmes(filme_id),
serie_id int,
foreign key (serie_id)
	references series(serie_id),
constraint fk_series_minhas_listas
	foreign key (serie_id)
    references series(serie_id),
novela_id int,
foreign key (novela_id)
	references novelas(novela_id),
constraint fk_novelas_minhas_listas
	foreign key (novela_id)
    references novelas(novela_id));

create table perfis(
perfil_id int not null auto_increment primary key,
nome varchar(50) not null,
cliente_id int,
foreign key (cliente_id)
	references clientes(cliente_id),
constraint fk_clientes_perfis
	foreign key (cliente_id)
	references clientes(cliente_id),
minha_lista_id int,
foreign key (minha_lista_id)
	references minhas_listas(minha_lista_id),
constraint fk_minhas_listas_perfis
	foreign key (minha_lista_id)
	references minhas_listas(minha_lista_id));

-- Inserindo informações na tabela clientes    
insert into clientes(nome, sobrenome, cpf, data_nascimento, senha, email)
values ('Claúdio', 'Ribeiro Junior', '000.000.000-00', '1996-07-12', 'sjfnduickdk', 'claudio.junior@exemplo.com.br');

-- Inserindo informações na tabela endereços  
insert into enderecos(logradouro, estado, cidade, numero, cep, cliente_id)
values ('Rua Dinamerica', 'pb', 'Campina Grande', 200 , '00000-000', 1);

-- Inserindo informações na tabela telefones  
insert into telefones(ddi, ddd, celular, cliente_id)
values (55, 83, 958564616, 1);

-- Inserindo informações na tabela clientes 
insert into clientes(nome, sobrenome, cpf, data_nascimento, senha, email)
values ('João', 'Santos', '000.000.000-00', '1991-01-17', 'sjfnduickdk', 'joao@exemplo.com.br');

-- Inserindo informações na tabela endereços  
insert into enderecos(logradouro, estado, cidade, numero, cep, cliente_id)
values ('Rua Dinamerica', 'pb', 'Campina Grande', 200 , '00000-000', 2);

-- Inserindo informações na tabela diretores
insert into diretores(nome)
values ('Guy Ritchie');

-- Inserindo informações na tabela filmes
insert into filmes(titulo, ano_lancamento, classificacao, diretor_id)
values ('Infiltrado', '2021-08-26', '16 anos', 1);

-- Inserindo informações na tabela generos
insert into generos(genero, filme_id)
values ('ação', 1);

-- Inserindo informações na tabela idiomas
insert into idiomas(idioma, filme_id)
values ('Português', 1);

-- Inserindo informações na tabela elenco
insert into elenco(nome, filme_id)
values ('Jason Statham', 1);
insert into elenco(nome, filme_id)
values ('Holt McCallany', 1);

-- Recuperando todas as colunas com seus valores da tabela filmes
select * from filmes;

-- Atualizando o registro da tabela generos no id 1
update generos
set genero = 'suspense'
where genero_id = 1;

-- Inserindo informações na tabela generos
insert into generos(genero)
values ('aventura');

-- Inserindo informações na tabela generos
insert into generos(genero)
values ('documentário');

-- Recuperando a coluna genero com seus valores da tabela generos
select genero from generos;

-- Deletanto o registro cujo endereco_id é igual a 2
delete from enderecos
where endereco_id = 2;

-- Deletanto o registro cujo cliente_id é igual a 2
delete from clientes
where cliente_id = 2;

-- Recuperando todos os valores da tabela clientes
select * from clientes;

-- Inserindo informações na tabela clientes 
insert into clientes(nome, sobrenome, cpf, data_nascimento, senha, email)
values ('João', 'Santos', '000.000.000-00', '1991-01-17', 'sjfnduickdk', 'joao@exemplo.com.br');

-- Inserindo informações na tabela endereços  
insert into enderecos(logradouro, estado, cidade, numero, cep, cliente_id)
values ('Rua Dinamerica', 'pb', 'Campina Grande', 200 , '00000-000', 3);

-- Inserindo informações na tabela telefones  
insert into telefones(ddi, ddd, celular, cliente_id)
values (55, 83, 958564616, 3);

-- Recuperando as informações da tabela clientes, endereços e telefones do banco de dados
select c.nome, c.sobrenome, c.email, e.logradouro, e.estado, e.numero, e.cep, e.cidade, t.ddd, t.celular
from clientes c
inner join enderecos e
on e.cliente_id = c.cliente_id
inner join telefones t
on t.cliente_id = c.cliente_id;

-- Recuperando as informações da tabela filmes, diretores, elenco e idiomas
select f.titulo, f.ano_lancamento, f.classificacao, d.nome as diretor, e.nome as elenco, i.idioma
from filmes f
inner join diretores d
on f.diretor_id = d.diretor_id
inner join elenco e 
on f.filme_id = e.filme_id
inner join idiomas i
on f.filme_id = i.filme_id;

-- Recupera de maneira agrupada a quantidade de clientes que reside no mesmo endereço
select logradouro, count(logradouro) as QtdDeCliente
from enderecos
group by logradouro;