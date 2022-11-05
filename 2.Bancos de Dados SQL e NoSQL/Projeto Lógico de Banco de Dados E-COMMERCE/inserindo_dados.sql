-- Inserindo dados

use Ecommerce;
show tables;


desc cliente;
-- Cliente: Nome_Completo; CPF; Data_de_nascimento; Email; Telefone_1; Telefone_2; Logradouro; Endereco; Numero_Residencial; Bairro; Complemento; Cidade; Estado; CEP.
insert into cliente (Nome_Completo, CPF, Data_de_nascimento, Email, Telefone_1, Telefone_2, Logradouro, Endereco, Numero_Residencial, Bairro, Complemento, Cidade, Estado, CEP) 
		values 	('Marcos Oliveira','06980084640','1965-11-03','marcosoliveira@gmail.com','619499752',null,'ala','Guilherme Weigart','129','Conjuto A',null,'Brasília','DF','58054000'),
				('Anita Garcia Sousa','10864855990','1966-07-08','anitasousa@gmail.com','7995774361','7996335811','est','Dona Maria','294','Jardim das Rosas','casa 1 ','Aracaju','SE','49099000'),
				('Belinda Alves','00466836660','1967-11-05','belindalves@gmail.com','5192371688','5198334365','est','Maria Bonita','85','Conjuto E','casa 2','Porto Alegre','RS','91999000'),
				('Carolina Roque de Oliveira','73255622093','1989-12-17','carolina@gmail.com','9193398568','9194725124','ave','Bandeirantes','713','Perola','Ap 15','Belém','PA','66999000'),
				('Catarina Marques','44025707942','1969-07-07','catarina@gmail.com','989141793',null,'rua','Carlos Frank','28','Seis',null,'São Luiz','MA','65099000'),
				('Raul Morais','64505501124','1956-05-15','raulmoraisl@gmail.com','989562105',null,'rua','Irmãos mendonça','1890','Quatro',null,'São Luiz','MA','65099000'),
				('Eduardo Xavier','03717337742','1958-09-08','eduardo@gmail.com','2199389621',null,'rua','Uganda','1724','São José',null,'Rio de Janeiro ','RJ','23799000'),
				('Lucas Oliveira dos Santos','20891066624','2000-08-02','lucassantoss@gmail.com','5199730545','5195949108','est','Angola','652','Conjunto C',null,'Porto Alegre ','RS','91999000');

select * from cliente;



desc produto;
-- Produto: Nome; Categoria enum('Acessórios de Tecnologia', 'Celular e Smartphone', 'Eletrodomésticos', 'Esporte e Lazer', 'Ferramentas', 'Games', 'Informática', 'Livros', 'Moveis'); 
--                  Descricao; Preco_unitario; Possui_garantia_estendida enum('Sim','Não');  Avaliacao; Dimensoes
insert into produto (Nome, Categoria, Descricao, Preco_unitario, Possui_garantia_estendida, Avaliacao, Dimensoes) values
				('Fone De Ouvido Bluetooth','Acessórios de Tecnologia','Fone Ouvido A6S Bluetooth Preto ABS + Case. Os Fones A6S têm um estilo único que se inspira na simplicidade','49.9','Sim','4.3',null),
				('iPhone 11','Celular e Smartphone','iPhone 11 Apple 64GB Branco 6,1” 12MP iOS','3254.07','Sim','4.9',null),
				('Geladeira/Refrigerador Brastemp','Eletrodomésticos','Geladeira/Refrigerador Brastemp Frost Free Duplex - Branca 375L BRM44 HBANA','2849.05','Sim','4.8',null),
				('Bermuda Adidas','Esporte e Lazer','Bermuda Adidas 3S Masculina','57.69','Não','4.9',null),
				('Kit Ferramentas Sparta','Ferramentas','Kit Ferramentas Sparta 129 Peças 13564 - com Maleta','113.91','Não','4.7',null),
				('PlayStation 5','Games','PlayStation 5 825GB 1 Controle Branco Sony - com Horizon Forbidden West','4654.90','Sim','4.8',null),
				('Notebook Samsung Book','Informática','Notebook Samsung Book Intel Core i7 8GB 256GB SSD - 15,6” Full HD Windows 11 NP550XDA-KU1BR','3959.10','Sim','4.7',null),
				('PRESENÇA DE ANTÍGONA','Livros','Livro - PRESENÇA DE ANTÍGONA','26.80','Não','0',null),
				('Sofá Retrátil e Reclinável','Móveis','Sofá Retrátil e Reclinável Cama inBox Compact 1,50m Tecido Suede Velusoft Cinza','799.90','Não','4.0',null);

select * from produto;


desc entrega;
-- Entrega: Codigo_rastreio; Status_entrega enum('Separado pelo fornecedor','Saiu do centro de distribuição','A caminho da sua cidade',
-- 																		 'Na rota de entrega','Entregue'); Prazo_entrega; Valor_frete;
insert into entrega (Codigo_rastreio, Status_entrega, Prazo_entrega, Valor_frete) values
				('A100001','Separado pelo fornecedor','2022-10-25','0'),
				('A100002','Separado pelo fornecedor','2022-10-31','11.90'),
				('A100003','Separado pelo fornecedor','2022-10-24','20.49'),
				('A100004','Saiu do centro de distribuição','2022-10-27','7.99'),
				('B200001','Saiu do centro de distribuição','2022-10-25','8.00'),
				('B200002','Saiu do centro de distribuição','2022-10-22','9.40'),
				('B200003','A caminho da sua cidade','2022-10-21','0');

select * from entrega;



desc carteira_digital; 
-- Carteira Digital: Numero_carteira; Data_adesão; Valor_em_conta; Valor_de_cashback;
insert into carteira_digital(numero_carteira, Data_adesão, Valor_em_conta, valor_de_cashback) values
				('123456','2021-08-13','0.00','0.00'),
				('123654','2021-09-03','190.00','0.00'),
				('125463','2021-10-19','1230.58','0.00'),
				('135245','2021-11-29','98.42','0.00'),
				('135456','2021-12-12','59.00','0.00');

select * from carteira_digital;



desc pagamento_cartao;
-- Pagamento Cartão: Nome_completo_titular; Numero_cartao; Bandeira_cartao; Data_validade; CPF_CNPJ_titular;
insert into pagamento_cartao(Nome_completo_titular, Numero_cartao, Bandeira_cartao, Data_validade, CPF_CNPJ_Titular) values
				('Marcos Oliveira','1234567891234567','VISA','2026-10-01','06980084640'),
				('Anita Garcia Sousa','3216549879874568','VISA','2025-07-19','10864855990'),
				('Belinda Alves','1478523698521478','MASTERCARD','2024-08-21','00466836660'),
				('Carolina Roque de Oliveira','3698521478954123','MASTERCARD','2028-12-10','73255622093'),
				('Catarina Marques', '9856745812563458','MASTERCARD','2023-05-20','44025707942');
                
select * from pagamento_cartao;


desc formas_pagamento;
-- Formas de pagamento: idFormas_pagamento_cliente; idFormas_pagamento_pagamento_cartao; idFormas_pagamento_carteira_digital; Pix; Boleto; Transferencia_bancaria;
insert into formas_pagamento (idFormas_pagamento_cliente, idFormas_pagamento_pagamento_cartao, idFormas_pagamento_carteira_digital, Pix, Boleto, Transferencia_bancaria) values
				(1,1,1,null,null,null),
				(2,2,2,null,null,null),
				(3,3,3,null,null,null),
				(4,4,4,null,null,null),
				(5,5,5,null,null,null),
				(6,1,3,null,null,null),
				(7,2,2,null,null,null),
				(8,5,1,null,null,null);

select * from formas_pagamento;


desc pedido;
-- Pedido: idPedidoCliente; idPedidoEntrega; idPedidoFormas_pagamento; Status_do_pedido enum('Cancelado','Em andamento','Processando','Enviado','Entregue');
-- 			Descricao; Data_do_pedido; 
insert into pedido(idPedidoCliente, idPedidoEntrega, idPedidoFormas_pagamento, Status_do_pedido, Descricao, Data_do_pedido) values
				('1','1','1','Cancelado','Compra pelo site','2022-10-05'),
				('2','2','2','Enviado','Compra pelo Aplicativo','2022-10-07'),
				('3','3','3','Entregue','Compra pelo site','2022-10-12'),
				('4','4','4','Em andamento','Compra pelo site','2022-10-13');
                
select * from pedido;
        


desc estoque;
-- Estoque: Local_estoque; Responsavel; Email_1; Telefone_1; Telefone_2;
insert into estoque (Local_estoque, Responsavel, Email_1, Telefone_1, Telefone_2) values
				('Rio de Janeiro','João da Silva','cd-riodejaneiro@estoque.com','21998548962','21998548960'),
				('São Paulo','Jose dos Flores','cd-saopaulo@estoque.com','11985478596','11985478590');
			
select * from estoque;


desc fornecedor;
        -- Fornecedor: Razao_social; Nome_fantasia; CNPJ; Responsavel; Endereco_fornecedor; Contato_email_1; Contato_email_2; Contato_telefone_1; Contato_telefone_2;
insert into fornecedor (Razao_social, Nome_fantasia, CNPJ, Responsavel, Endereco_fornecedor, Contato_email_1, Contato_email_2, Contato_telefone_1, Contato_telefone_2) values
				('Eletronicos SA.','Brasa Eletronicos','51258659000132','Lorena Gonçalves Pinto','Rua Tia Ciata, Rio de Janeiro - Rio de Janeiro / Brasil','contato@brasaeletronico.com.br',null,'21985554775',null),
				('Moveis e eletrodomésticos do Brasil Ltda','Movil Moveis','26159847000119','Marilza Aparecida Nepomoceno','Avenida Tom Jobim, São Paulo - São Paulo / Brasil ','contato@movilmoveis.com',null,'11905515454',null),
				('TEC Ltda','CelCom Brasil','95259132000120','Ivanildo da Silva','Avenida Engenheiro Rebouças, Curitiba - Paraná / Brasil ','contato@celcom.com.br','vendas@celcom.com.br','41998552364',null);

select * from fornecedor;

desc vendedor;
-- Vendedor: Razao_social; Nome_fantasia; CPF_CNPJ; Local_vendedor; Nome_vendedor; Email_1; Email_2; Telefone_1; Telefone_2;
insert into vendedor (Razao_social, Nome_fantasia, CPF_CNPJ, Local_vendedor, Nome_vendedor, Email_1, Email_2, Telefone_1, Telefone_2) values
				('Eletronicos e variados','Vendas & Vendas','12159158000125','Curitiba','Bruno Ferreira Junior','bruno@vendasvendas.com',null,'41987456321',null),
				('AWXS','FERGERO','1313254800131','Rio de Janeiro','Antonio Guilherme Pontes','antonio@fergero.com.br',null,'21905412563',null);

select * from vendedor;


desc produto_pedido;
-- Produto Pedido: Quantidade_produto; Status_pp;
insert into produto_pedido (idPeProduto, idPePedido, Quantidade_produto, Status_pp) values
				(1,1,1,'Sem estoque'),
				(2,2,2,'Sem estoque'),
				(3,3,3,'Disponivel'),
				(4,4,4,'Disponivel');

select * from produto_pedido;



desc produto_vendedor; 
-- Produto Vendedor: Quantidade_produto;
insert into produto_vendedor(idVeVendedor, idVeProduto, Quantidade_produto) values
				(1,1,5),
				(2,2,2),
				(1,3,1),
				(2,4,2),
				(1,5,6),
				(2,6,1);

select * from produto_vendedor;



desc produto_fornecedor;
-- Produto Fornecedor:
insert into produto_fornecedor (idFoFornecedor, idFoProduto) values
				(1,1),
				(1,2),
				(2,3),
				(3,4),
				(2,5),
				(1,6),
				(1,7),
				(3,8),
				(2,9);

select * from produto_fornecedor;


desc produto_em_estoque;
-- Produto em estoque: idEsEstoque	idEsProduto	Quantidade_estoque;
insert into produto_em_estoque (idEsEstoque, idEsProduto, Quantidade_estoque) values
				(1,1,10),
				(1,2,15),
				(1,3,20),
				(1,4,5),
				(1,5,16),
				(1,6,80),
				(1,7,10),
				(1,8,20),
				(1,9,35);

select * from produto_em_estoque;






