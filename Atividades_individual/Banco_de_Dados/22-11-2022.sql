select * from Faturas;

select * from Correios;

select * from DetalheFatura;

select c.Empresa, count(f.ClienteID) as Quantidade, format(sum(f.Transporte),2) as ValorTotal
from Correios c
inner join Faturas f;

SET FOREIGN_KEY_CHECKS=0; 