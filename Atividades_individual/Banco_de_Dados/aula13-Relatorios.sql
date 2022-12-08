USE musimundos;

SELECT *
FROM albuns;

SELECT id_artista as CodArtista, count(id) as QtdAlbuns
FROM albuns
GROUP BY id_artista
HAVING id_artista = 113;
-- ORDER by QtdAlbuns DESC;

SELECT id_artista as CodArtista, titulo
FROM albuns
WHERE id_artista = 113;

SELECT id_artista as CodArtista, count(id) as QtdAlbuns
FROM albuns
GROUP BY id_artista
HAVING id_artista = 90;

SELECT * FROM faturas;

SELECT pais_cobranca, count(id) as QtdFaturas, sum(valor_total) as TotalFatura,
FORMAT(avg(valor_total),2) as MediaFaturas
FROM faturas
GROUP BY pais_cobranca
ORDER BY TotalFatura DESC;

SELECT pais_cobranca, sum(valor_total) as TotalFatura, max(valor_total) as MaiorFatura,
min(valor_total) as MenorFatura
FROM faturas
GROUP BY pais_cobranca
ORDER BY TotalFatura DESC;

SELECT pais_cobranca as Pais, sum(valor_total) as TotalFatura, max(valor_total) as MaiorFatura
FROM faturas
GROUP BY pais_cobranca
HAVING MaiorFatura > 20.00;

SELECT id_cliente as Cliente, sum(valor_total) as TotalFatura, max(valor_total) as MaiorFatura,
pais_cobranca as Pais
FROM faturas
GROUP BY id_cliente
HAVING sum(valor_total) BETWEEN 20.00 and 40.00
ORDER BY TotalFatura DESC;





