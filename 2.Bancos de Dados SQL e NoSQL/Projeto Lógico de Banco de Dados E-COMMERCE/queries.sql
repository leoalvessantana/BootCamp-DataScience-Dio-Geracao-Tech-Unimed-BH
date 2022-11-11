use Ecommerce;


-- Vendo os clientes cadastrados:
select * from cliente;


-- Contando o numero de clientes cadastrados:
select count(*) from cliente;


-- Recuperando os dados dos clientes que realizaram pedidos:
select *from cliente c, pedido p where c.idCliente = idPedidoCliente;


-- Quantos pedidos foram feitos por cada cliente?
select c.idCliente, Nome_completo, count(*) as Numero_de_pedidos from cliente as c 
					inner join pedido as p on c.idCliente = p.IdPedidoCliente
			group by idCliente;


-- Status dos pedidos:
select nome_completo, idPedido, 
Status_do_pedido from cliente c, pedido p where c.idCliente = idPedidoCliente;


-- Algum vendedor também é fornecedor?
select v.Razao_social, v.Nome_fantasia, f.Razao_social, f.Nome_fantasia from vendedor v, fornecedor f
	where v.CPF_CNPJ = f.CNPJ;


-- Relação de produtos e fornecedor:
select idProduto, Nome, f.Razao_social, CNPJ from produto
		inner join produto_fornecedor on idProduto=idFoProduto
        inner join fornecedor f on idFornecedor = idFoFornecedor;
            
            
-- Relação de Produto e Estoque:
select idProduto, Nome, e.Responsavel, e.Local_estoque, pe.Quantidade_estoque from produto
		inner join produto_em_estoque pe on idProduto=idEsProduto
        inner join estoque e on idEstoque = idEsEstoque
        order by e.Local_estoque, Nome;
        
-- Relação de nomes dos fornecedores e nomes dos produtos:
select f.Razao_social, p.Nome from fornecedor f
		inner join produto_fornecedor pf on idFornecedor = idFoFornecedor
        inner join produto p on idProduto = idFoProduto;

            
select * from produto_em_estoque;
select * from produto;
            
-- Qual o valor total dos produtos do estoque?
select sum(round(p.Preco_unitario*Quantidade_estoque,2)) as Valor_estoque from produto p
		inner join produto_em_estoque pe on idProduto=idEsProduto;
	
-- Selecionando os Produtos que tem menos que 100 produtos em estoque para que seja feita reposição:
select p.Nome, pe.Quantidade_estoque, p.Preco_unitario from produto p
		inner join produto_em_estoque pe on idProduto=idEsProduto
        having pe.Quantidade_estoque < 50
        order by pe.Quantidade_estoque;

        