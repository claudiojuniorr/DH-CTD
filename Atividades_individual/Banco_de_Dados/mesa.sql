use musimundos;

select c.nome as Musica, g.nome as Genero
from cancoes c
inner join generos g
order by Genero asc;

select concat(c.nome,' ', c.sobrenome) as Clientes, pais as Pais
from clientes c
order by Clientes asc;

select c.nome as Cancoes, a.titulo as Albuns
from cancoes c
inner join albuns a
on c.id = a.id;

select count(c.id) as QtdMusica, g.nome as Genero
from cancoes c
inner join generos g 
on c.id_genero = g.id
group by Genero
order by QtdMusica desc;
