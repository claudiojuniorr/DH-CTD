select * from faturas;

select count(id) as quantidadeFaturas, data_fatura
from faturas
group by data_fatura
order by quantidadeFaturas desc;

select pais_cobranca, count(id) as quantidade, format(sum(valor_total),2) as total, format(avg(valor_total),2) as media, max(valor_total) as maiorValor
from faturas
group by pais_cobranca;

select pais_cobranca, count(id) as quantidade, format(sum(valor_total),2) as total, format(avg(valor_total),2) as media, max(valor_total) as maiorValor
from faturas
group by pais_cobranca
having pais_cobranca like 'C_nada';

select pais_cobranca, count(id) as quantidade, format(sum(valor_total),2) as total, format(avg(valor_total),2) as media, max(valor_total) as maiorValor
from faturas
group by pais_cobranca
having pais_cobranca like 'Bra_il';

select pais_cobranca, count(id) as quantidade, format(sum(valor_total),2) as total, format(avg(valor_total),2) as media, max(valor_total) as maiorValor
from faturas
group by pais_cobranca
having pais_cobranca like 'Argentina';

select pais_cobranca, count(id) as quantidade, format(sum(valor_total),2) as total, format(avg(valor_total),2) as media, max(valor_total) as maiorValor
from faturas
group by pais_cobranca
having pais_cobranca like 'USA';

select * from clientes; 

select count(pais) as  quantidadeClientes, pais
from clientes 
group by pais
having count(pais) > 4;

select nome, estado
from clientes
where estado like 'SP';

select * from cancoes;

select id_genero, count(id) as quantidade, preco_unitario, sum(preco_unitario) as valorTotal
from cancoes
group by id_genero;

SELECT id_genero, count(id) as qtd_cancoes, preco_unitario, sum(preco_unitario) as Valor_total_cancoes 
FROM cancoes 
GROUP BY id_genero 
ORDER BY qtd_cancoes DESC;