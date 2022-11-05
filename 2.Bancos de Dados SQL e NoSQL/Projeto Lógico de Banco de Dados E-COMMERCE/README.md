# Projeto Lógico de Banco de Dados E-COMMERCE


## Escopo de E-COMMERCE:

Contexto:
* O  O foco é Venda de produtos, considerando:  Produto, Cliente, Pedido, Fornecedor e Estoque.


### Produto
* Os produtos são vendidos por uma unica plataforma online. Contudo, estes podem ter vendedores distintos (terceiros).
* Cada produto possui um fornecedor.
* Um ou mais produtos podem compor um pedido.


### Cliente:
* O cliente pode se cadastrar no site com seu CPF ou CNPJ.
* O Endereço do cliente irá determinar o valor do frete.
* Um cliente pode comprar mais de um pedido. Este tem um período de carência para devolução do produto.


### Pedido:
* O pedidos são criados por clientes e possuem informações de compra, endereço e status da entrega.
* Um produto ou mais compoem o pedido.
* O pedido pode ser cancelado.


## Refinamento:
* Cliente PJ e PF - Uma conta pode ser PJ ou PF, mas não pode ter as duas informações.
* Pagamento - Pode ter cadastrado mais de uma forma de pagamento.
* Entrega - Possui status e código de restreio.


## Software usado para modelagem
* MySQL Workbench

