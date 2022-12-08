SELECT titulo as Serie, nome as genero
FROM series, generos
WHERE series.genero_id = generos.id;

SELECT COALESCE(s.titulo, 'Não tem Série') as Serie, g.nome as Genero
FROM series s
RIGHT JOIN generos g
ON s.genero_id = g.id;

SELECT s.titulo as Serie, g.nome as Genero
FROM series s
INNER JOIN generos g
ON s.genero_id = g.id;

SELECT e.titulo as Episodio, CONCAT(a.nome , ' ', a.sobrenome) as Ator
FROM episodios e
INNER JOIN ator_episodio ae
ON e.id = ae.episodio_id
INNER JOIN atores as a
ON a.id = ae.ator_id;

SELECT f.titulo as filmes, concat(a.nome, ' ', a.sobrenome) as atores
FROM filmes f
INNER JOIN ator_filme af
ON f.id = af.filme_id
INNER JOIN atores a 
ON a.id = af.ator_id
WHERE f.titulo like '%Harry%';

SELECT g.nome as genero, count(f.id) as QtdFilmes
FROM generos g 
LEFT JOIN filmes f
ON g.id = f.genero_id
GROUP BY g.nome;


