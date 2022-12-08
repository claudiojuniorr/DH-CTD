select cancoes.nome, generos.nome
from cancoes
inner join generos
on cancoes.id_genero = generos.id
where compositor like 'Willie%';

select cancoes.nome, generos.nome
from cancoes
inner join generos
where generos.nome like 'rock';

select albuns.titulo, artistas.nome
from albuns
inner join artistas 
on albuns.id_artista = artistas.id;

select cancoes.nome as musica, tipos_de_arquivo.nome as tiposDeArquivo
from cancoes
inner join tipos_de_arquivo
on cancoes.id_tipo_de_arquivo = tipos_de_arquivo.id
where tipos_de_arquivo.nome like 'MPE%';

select titulo from empregados
where id = 3;

select cancoes.nome, playlists.nome
from cancoes_playlists
inner join cancoes
on cancoes.id = cancoes_playlists.id_cancao
inner join playlists
on playlists.id = cancoes_playlists.id_playlist;

select * from cancoes;

select compositor
from cancoes
group by compositor;

select estado_cobranca, pais_cobranca, cep_cobranca
from faturas;

select nome,data_nascimento,data_contratacao from empregados;

select datediff('y', '1973-05-25', '2000-11-02');

select faturas.data_fatura, clientes.id
from faturas
inner join clientes
on clientes.id = 2
order by faturas.data_fatura desc;

select nome, compositor
from cancoes