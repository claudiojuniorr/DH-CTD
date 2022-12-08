use musimundos;

select * from clientes;

select count(id) as totalClientes
from clientes
group by pais
having pais like 'Brazil';

select * from cancoes;

select count(id_genero) as TotalCancoes
from cancoes
group by id_genero
having id_genero = 6;

select * from faturas;

select sum(valor_total)
from faturas;

select * from cancoes;

select avg(duracao_milisegundos)
from cancoes
where id_album =4;

select min(bytes)
from cancoes;

select * from faturas;

select id_cliente, sum(valor_total) as valorTotal
from faturas
group by id_cliente;
