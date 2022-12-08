use EMarket;

select ProdutoID, ProdutoNome, CategoriaID, precoUnitario, 
format ((PrecoUnitario - (PrecoUnitario *20)/100),2) as PrecoPromocional
from Produtos
order by PrecoPromocional desc;

select * from Clientes;

select Empresa, Contato, Titulo, Pais
from Clientes
where Pais like '%Bra_il%';

select CategoriaNome
from Categorias
order by CategoriaNome;

select Empresa, Contato, Titulo, Pais
from Clientes
where Titulo like '%Sale%';

select * from Provedores;

select ProvedorID, Empresa, Contato, Pais
from Provedores
where Pais like '%Bra_il%';

select ProdutoID, ProdutoNome, ProvedorID, CategoriaID, PrecoUnitario, 
format((PrecoUnitario - (PrecoUnitario * 50)/100),2) as PrecoPromocional
from Produtos
where ProvedorID = 7;

select ProdutoID, ProdutoNome, CategoriaID,
format(PrecoUnitario,2) as PrecoUnitario
from Produtos
where PrecoUnitario between 10 and 20;

select * from Produtos where ProvedorID = 8;

select * 
from Produtos
where UnidadesEstoque < NivelReabastecimento;