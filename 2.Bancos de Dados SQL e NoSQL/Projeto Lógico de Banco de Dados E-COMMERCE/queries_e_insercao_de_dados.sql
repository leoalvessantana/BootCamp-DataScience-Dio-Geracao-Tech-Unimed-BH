use ecommerce;

show tables;

desc cliente;

-- Cliente: Nome_Completo; CPF; Data_de_nascimento; Email; Telefone_1; Telefone_2; Logradouro; Endereco; Numero_Residencial; Bairro; Complemento; Cidade; Estado; CEP.
insert into cliente (Nome_Completo, CPF, Data_de_nascimento, Email, Telefone_1, Telefone_2, Logradouro, Endereco, Numero_Residencial, Bairro, Complemento, Cidade, Estado, CEP) 
		values  ('Maria Silva','46772124979','1952-11-21','mariasilva@gmail.com','34996857445',null,'mal','Floriano Peixoto','1500','Centro',null,'Uberlândia ','MG','38400090'),
				('Tom Jobim','66946793239','1962-11-15','tomjobim@gmail.com','34997457489','34998743355','rua','Comendador Alexandrino Garcia','655','Centro','praça','Uberlândia ','MG','38408120'),
				('Gilberto Gil','24426834724','1972-02-06','gilbertogil@gmail.com','34911165498',null,'ave','Linha verde','654','Jardins',null,'Uberlândia','MG','38408011'),
				('Julia França','15547886555','1942-08-20','juliafrança@gmail.com','34996225668',null,'ave','João Escussiato','1594','Gávea','sobrado','Uberlândia','MG','38400040'),
				('Roberta Assis','54565887421','1991-04-14','assisroberta@gmail.com','34995213248',null,'rua','Carlos Frank','598','Morumbi',null,'Uberlândia','MG','38408010'),
				('Isabela Cruz','21336448856','1998-10-04','isacruz314@gmail.com','34997125971',null,'rua','Irmãos Garcia','78','Moema',null,'Uberlândia','MG','38400240');



