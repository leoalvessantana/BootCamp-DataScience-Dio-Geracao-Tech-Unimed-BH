-- Inserindo dados

use Oficina;
show tables;


desc cliente;
-- Cliente: Nome_Completo; CPF; Data_de_nascimento; Email; Telefone_1; Telefone_2; Logradouro; Endereco; Numero_Residencial; Bairro; Complemento; Cidade; Estado; CEP.
insert into cliente (Nome_Completo, CPF, Data_de_nascimento, Email, Telefone_1, Telefone_2, Logradouro, Endereco, Numero_Residencial, Bairro, Complemento, Cidade, Estado, CEP) 
	values 	
		('Marcos Oliveira','06980084640','1965-11-03','marcosoliveira@gmail.com','619499752',null,'ala','Guilherme Weigart','129','Conjuto A',null,'Brasília','DF','58054000'),
		('Anita Garcia Sousa','10864855990','1966-07-08','anitasousa@gmail.com','7995774361','7996335811','est','Dona Maria','294','Jardim das Rosas','casa 1 ','Aracaju','SE','49099000'),
		('Belinda Alves','00466836660','1967-11-05','belindalves@gmail.com','5192371688','5198334365','est','Maria Bonita','85','Conjuto E','casa 2','Porto Alegre','RS','91999000'),
		('Carolina Roque de Oliveira','73255622093','1989-12-17','carolina@gmail.com','9193398568','9194725124','ave','Bandeirantes','713','Perola','Ap 15','Belém','PA','66999000'),
		('Catarina Marques','44025707942','1969-07-07','catarina@gmail.com','989141793',null,'rua','Carlos Frank','28','Seis',null,'São Luiz','MA','65099000'),
		('Raul Morais','64505501124','1956-05-15','raulmoraisl@gmail.com','989562105',null,'rua','Irmãos mendonça','1890','Quatro',null,'São Luiz','MA','65099000'),
		('Eduardo Xavier','03717337742','1958-09-08','eduardo@gmail.com','2199389621',null,'rua','Uganda','1724','São José',null,'Rio de Janeiro ','RJ','23799000'),
		('Lucas Oliveira dos Santos','20891066624','2000-08-02','lucassantoss@gmail.com','5199730545','5195949108','est','Angola','652','Conjunto C',null,'Porto Alegre ','RS','91999000');

SELECT * FROM cliente;



-- Veiculo: (idVCliente,Tipo_veiculo,Placa,Marca,Modelo,Ano_fabricacao)
insert into veiculo (idCliente,Tipo_veiculo,Placa,Marca,Modelo,Ano_fabricacao) 
	values
		('1','Moto','BAP9459','Yamaha','FACTOR 150 ED','2010'),
		('3','Moto','AOV4450','Yamaha','R3 MONSTER ABS','2018'),
		('7','Moto','AWW0879','Honda','Elite 125','2018'),
		('1','Carro','BEQ6210','Toyota','Hilux','2000'),
		('2','Carro','ATC8042','Volvo','S60','2006'),
		('2','Carro','AXR5925','Renault','Sandero','2004'),
		('3','Carro','AWI6077','Ford','Ka Sedan','2015'),
		('4','Carro','AVW4826','Honda','Accord','2014'),
		('5','Carro','AMA8183','Honda','City','2018'),
		('6','Carro','AHH2942','Renault','Captur','2022'),
		('6','Carro','ACV2826','Honda','HR-V','2016'),
		('6','Van','AXH1341','Ford ','Transit','2018'),
		('7','Van','AHU6435','Ford ','Transit','2019'),
		('8','Caminhão','AJZ4028','Scania','Linha P','1998'),
		('8','Caminhão','AZQ6884','Scania','Linha P','2000'),
		('3','Caminhão','ABO5982','Mercedes-Benz','L 312','2020'),
		('8','Caminhão','BEX0078','Mercedes-Benz','LP 321','2022');

SELECT * FROM veiculo;



-- Equipes: (idEquipes,Especialidade,Responsavel)
insert into equipes (idEquipes,Especialidade,Responsavel) values
		('1','Motor','João Silva'),
		('2','Suspensão','Thiago Menezes'),
		('3','Eletrica','Alfredo Pereira'),
		('4','Carroceria','Domingos Sousa');
        
SELECT * FROM equipes;



-- mecanicos: (idmecanicos,idEquipes, Nome,CPF,Data_nacimento ,Endereco,CEP,Cidade,Estado, Especialidade,Telefone)
insert into mecanicos (idEquipes,Nome,CPF,Data_nacimento ,Endereco,CEP,Cidade,Estado, Especialidade, Telefone)
	values 
		('1','João Silva','11122233344','1975-10-25','Rua Jaracatiá','81550140','Curitiba','PR','Motor','41999859741'),
		('1','Pedro Souza','11125634587','1980-09-15','Rua São João Evangelista','80740230','Curitiba','PR','Motor','41985487485'),
		('1','Victor Nascimento','33366655587','1997-08-30','Rua Ângelo Cretã','81935112','Curitiba','PR','Motor','51975876598'),
		('2','Thiago Menezes','15948755854','1984-02-28','Rua Isaulino Francisco Brito','81490031','Curitiba', 'PR',
		'Suspensão','12848547592'),
		('2','Théo Soares','11555522248','1990-10-11','Praça Kelly Elizabette da Silva', '82300062','Curitiba', 'PR',
		'Suspensão','22902485290'),	
		('2','Joaquim Rodrigues','77788844458','1992-10-30','Rua Darci Luísa Belarmino',
		'81930655','Curitiba','PR','Suspensão','32924588490'),
		('3','Alfredo Pereira','44455522236','1979-11-30','Rua Bernardo Glodzinski','82600090','Curitiba','PR','Eletrica','13792365291'),
		('3','Bento Costa','44411155592','1982-07-15','Rua Arcendino Rosa Neves','81710280','Curitiba','PR','Eletrica','23825921597'),
		('3','Fernando Ferreira','55544466687','1999-05-13','Rua Guilherme Matter','82640110','Curitiba','PR','Eletrica','33996874695'),
		('4','Domingos Sousa','66222544875','1980-12-24','Rua Gregório Gomes de Oliveira','81580090','Curitiba','PR', 'Carroceria',
		'14808755492'),
		('4','Francisco Oliveira','77444899695','1985-10-12','Rua José Boguszewski','82130360','Curitiba','PR','Carroceria','24856958990'),
		('4','António Lopes','88444569852','1990-03-24','Rua Pedro Gusso','81310300','Curitiba','PR','Carroceria','34908525693');

SELECT * FROM mecanicos;



-- serviços: (Tipo_servico,Especialidade,Pecas_nescessarias,Quantidade_pecas,Preco_peca,Valor_mao_obra,Valor_total)
insert into servicos (Tipo_servico,Especialidade,Pecas_nescessarias,Quantidade_pecas,Preco_peca,Valor_mao_obra,Valor_total) values
		('Conserto','Motor','Oleo','5','24.90','80.00','204.5'),
		('Conserto','Motor','Correia dentada','2','60.59','210.90','332.08'),
		('Conserto','Motor','Bico Injetor','4','47.90','180.49','372.09'),
		('Conserto','Motor','Bomba de Direção Hidraulica','1','220.60','369.80','590.40'),
		('Conserto','Suspensão','Mola','4','180.00','237.00','957.00'),
		('Conserto','Suspensão','Amortecedor','4','120.20','589.90','1070.70'),
		('Conserto','Suspensão','Braços','8','90.20','130.90','852.50'),
		('Conserto','Suspensão','Barra estabilizadora','4','90.20','130.90','491.70'),
		('Conserto','Carroceria','Coletor de escape','1','99.90','186.50','286.40'),
		('Conserto','Carroceria','Silenciador','1','66.65','98.30','164.95'),
		('Conserto','Carroceria','Catalisador','1','490.00','200.10','690.10'),
		('Conserto','Eletrica','Motor de arranque','1','617.40','137.90','755.30'),
		('Conserto','Eletrica','Alternador','1','300.00','213.50','513.50'),
		('Conserto','Eletrica','Distribuidor','1','319.90','156.45','476.35'),
		('Revisão','Motor',null,null,null,'100.00','100.00'),
		('Revisão','Suspensão',null,null,null,'100.00','100.00'),
		('Revisão','Eletrica',null,null,null,'100.00','100.00'),
		('Revisão','Carroceria',null,null,null,'100.00','100.00');

SELECT * FROM servicos;



-- Estoque_pecas: (Nome_peca,Quantidade_disponivel,Valor_unitario)
insert into estoque_pecas (Nome_peca,Quantidade_disponivel,Valor_unitario) values
		('Oleo','20','24.90'),
		('Correia dentada','13','60.59'),
		('Bico Injetor','15','47.90'),
		('Bomba de Direção Hidraulica','2','220.60'),
		('Mola','40','180.00'),
		('Amortecedor','40','120.20'),
		('Braços','16','90.20'),
		('Barra estabilizadora','16','90.20'),
		('Coletor de escape','4','99.90'),
		('Silenciador','4','66.65'),
		('Catalisador','6','490.00'),
		('Motor de arranque','3','617.40'),
		('Alternador','9','300.00'),
		('Distribuidor','5','319.90');

SELECT * FROM estoque_pecas;



-- Ordem_servico: (idVeiculo,idEquipes,Numero,Data_emissao,pecas_necessarias,Valor,Status_ordem,Data_conclusao)
insert into ordem_servico (idVeiculo,idEquipes,Numero,Data_emissao,pecas_necessarias,Valor,Status_ordem,Data_conclusao) values
		('1','1','10000010','2020-01-16','Oleo','204.5','Concluida','2020-01-16'),
		('2','1','10000011','2020-01-28','Correia dentada','332.08','Cancelada',null),
		('3','1','10000012','2020-02-20','Bico Injetor','372.09','Concluida','2020-02-20'),
		('4','1','10000013','2020-02-25','Bomba de Direção Hidraulica','590.40','Concluida','2020-02-25'),
		('5','2','10000014','2020-03-15','Mola','957.00','Concluida','2020-03-15'),
		('6','2','10000015','2020-03-28','Amortecedor','1070.70','Concluida','2020-03-28'),
		('7','2','10000016','2020-05-04','Braços','852.50','Concluida','2020-05-04'),
		('8','2','10000017','2020-05-10','Barra estabilizadora','491.70','Concluida','2020-05-10'),
		('9','3','10000018','2020-05-21','Coletor de escape','286.40','Concluida','2020-05-21'),
		('10','3','10000019','2020-06-26','Silenciador','164.95','Concluida','2020-06-26'),
		('11','3','10000020','2020-07-07','Catalisador','690.10','Concluida','2020-07-07'),
		('12','3','10000021','2020-07-28','Motor de arranque','755.30','Concluida','2020-07-28'),
		('13','4','10000022','2020-08-30','Alternador','513.50','Concluida','2020-08-30'),
		('14','4','10000023','2020-09-06','Distribuidor','476.35','Concluida','2020-09-06'),
		('15','4','10000024','2020-09-18',null,'100.00','Concluida','2020-09-18'),
		('16','4','10000025','2020-09-22',null,'100.00','Concluida','2020-09-22'),
		('17','1','10000026','2020-10-16',null,'100.00','Concluida','2020-10-16');

SELECT  * FROM ordem_servico;




-- Pecas_os: (idPecas_estoque_pecas,idPecas_ordem_servico)
insert into pecas_os (idPecas_estoque_pecas,idPecas_ordem_servico) values
		(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
		(1,11),
		(2,12),
		(3,13),
		(4,14),
		(5,15),
		(6,16),
		(7,17);
                       
SELECT  * FROM pecas_os;



-- Servicos_OS: (idServico_ordem_de_servico,idServico_servicos)
insert into servicos_os (idServico_ordem_de_servico,idServico_servicos) values
		(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
		(11,11),
		(12,12),
		(13,13),
		(14,14),
		(15,15),
		(16,16),
		(17,17),
		(1,18);
        
SELECT  * FROM servicos_os;


