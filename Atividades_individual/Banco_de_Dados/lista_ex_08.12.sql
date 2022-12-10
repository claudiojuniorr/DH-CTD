-- 1)	Utilizando o banco de dados e-Market, crie uma procedure que receba o nome de um produto e liste 
-- todos os produtos e a categoria do produto informado.
-- Essa procedure deverá receber 2 parâmetros. Um IN e outro INOUT.
DROP PROCEDURE IF EXISTS sp_produtos;
DELIMITER $$
create procedure sp_produtos (inout p_id int, in p_nome varchar(50))
begin
select CategoriaID into p_id from produtos
where ProdutoNome = p_nome;

select c.CategoriaNome, p.ProdutoNome from categorias c inner join produtos p
on c.CategoriaID = p.CategoriaID;
end $$
DELIMITER ;

call sp_produtos(@p_id, 'Chai');
-- 2)	Crie uma procedure que o produto, a categoria e o valor unitário do produto que você informar. 
-- Para essa procedure, utilize apenas um parâmetro de entrada.
DROP PROCEDURE IF EXISTS sp_dados_produtos;
DELIMITER $$
CREATE PROCEDURE sp_dados_produtos(in p_produto varchar(50))
begin
select CategoriaID, ProdutoNome, PrecoUnitario
from produtos
where ProdutoNome = p_produto;
end $$
DELIMITER ;

CALL sp_dados_produtos('Uncle Bob\'s Organic Dried Pears');
-- 3) Crie uma procedure que liste todos os empregados e o título de cortesia de cada um. Para isso, você deverá informar um nome.
-- Utilize os parâmetros in e inout.
DROP PROCEDURE IF EXISTS sp_titulo;
DELIMITER $$
create procedure sp_titulo (in nome1 varchar(50), inout titulo varchar(5))
begin
select TituloCortesia into titulo from empregados WHERE Nome = nome1;
select CONCAT(Nome, ' ', Sobrenome) as Empregado, TituloCortesia as Titulo
from empregados
where TituloCortesia = titulo;
end $$
DELIMITER ;

call sp_titulo('Janet', @titulo);
-- 4)	Crie uma SP que liste os sobrenomes e nomes dos empregados, ordenados alfabeticamente.

-- 5)	Crie uma SP que leva o nome de uma cidade e lista os funcionários dessa cidade.

-- 6)	Crie uma SP que recebe o nome de um país e retorne o número de clientes naquele país. 
-- Invoque a SP para consultar a quantidade de clientes de Portugal ou USA.
DROP PROCEDURE IF EXISTS sp_nome_pais 
DELIMITER $$
create procedure sp_nome_pais (in p_pais varchar(30), out p_qtd int)
begin
select count(ClienteID) into p_qtd from clientes WHERE Pais = p_pais;
end $$
DELIMITER ;

CALL sp_nome_pais('Portugal', @p_qtd);
select @p_qtd;
-- 7)	Leia com atenção o enunciado e faça o que se pede:

-- a)	Crie uma SP que receba um número e liste os produtos cujo estoque está abaixo desse número. 
-- O resultado deve mostrar o nome do produto, o Estoque atual e o nome da categoria à qual o produto pertence.
-- b)	Liste os produtos com menos de 10 unidades no estoque;
-- c)	Liste os produtos sem estoque.
DROP PROCEDURE IF EXISTS sp_lista_Estoque 
DELIMITER $$
create procedure sp_lista_Estoque(in p_numero int)
begin
select p.ProdutoNome as NomeProduto, p.UnidadesEstoque as Estoque, c.CategoriaNome as Categoria
from produtos p INNER JOIN categorias c ON p.CategoriaID= c.CategoriaID where p.UnidadesEstoque < p_numero;
end $$
DELIMITER ;

CALL sp_lista_Estoque(1);

-- 8)	Siga as instruções abaixo:
-- a)	Crie uma SP que receba uma porcentagem e lista os nomes dos produtos que foram vendidos com desconto igual ou superior ao 
-- valor indicado, indicando, também,  o nome do cliente a quem foi vendido.
-- b)	Liste as informações dos produtos que foram vendidos com um desconto superior a 10%, indicando, também,  o nome do cliente a quem foi vendido.
DROP PROCEDURE IF EXISTS sp_desconto_produto; 
DELIMITER $$
create procedure sp_desconto_produto(in p_porcentagem int)
begin
select p.ProdutoNome as  Nome, ROUND((df.Desconto*100),2) as Desconto, c.Empresa as Empresa, (df.PrecoUnitario * p_porcentagem) as Porcentagem
FROM produtos p inner join detalhefatura df on p.ProdutoID = df.ProdutoID
inner join faturas f on df.FaturaId = f.FaturaId
inner join clientes c on f.ClienteID = c.ClienteID
WHERE df.Desconto >= (df.PrecoUnitario * p_porcentagem/100);
end $$
DELIMITER ;

call sp_desconto_produto(10);