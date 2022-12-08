select format(sum(f.Transporte),2) as totalFatura, c.Pais
from Faturas f
inner join Clientes c
on f.ClienteID = c.ClienteID
group by c.Pais;

select c.Contato, upper(c.Titulo) as Titulo
from Clientes c
inner join Faturas f
on c.ClienteID = f.ClienteID
where f.DataFatura < '1996-12-31';

select right(concat('00000000', f.FaturaId), 8) as FaturaID, 
date_format(f.DataFatura,'%d-%m-%Y') as DataFatura, c.Cidade, f.CidadeEnvio
from Faturas f
inner join Clientes c
on f.ClienteID = c.ClienteID
where c.Cidade <> f.CidadeEnvio and  c.Pais like 'uk';