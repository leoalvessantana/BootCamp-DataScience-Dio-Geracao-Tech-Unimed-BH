-- criação do banco de dados 
create database Oficina;
use Oficina;


-- criar tabela cliente
create table cliente(
		idCliente int auto_increment primary key,
        Nome_Completo varchar(45),
        CPF char(11) not null,
        constraint unique_cpf_cliente unique(CPF),
        Data_de_nascimento date not null,
	Email varchar(45) not null,
        Telefone_1 char(11) not null,
        Telefone_2 char(11),
        Logradouro char(3) not null,
        Endereco varchar(45) not null,
        Numero_Residencial int,
        Bairro varchar(45) not null,
        Complemento varchar(45),
        Cidade varchar (45) not null,
        Estado char(2) not null,
        CEP char(8)
);



-- Criar tabela Veiculo
create table  veiculo(
		idVeiculo int auto_increment primary key,
        idCliente int,
        Tipo_veiculo enum('Moto', 'Carro', 'Van', 'Caminhão') not null,
        Placa char(7) not null,
        constraint unique_placa_veiculo unique(Placa),
        Marca varchar(45) not null,
        Modelo varchar(45)not null,
        Ano_fabricacao char(4) not null,
		constraint fk_Cliente foreign key (idCliente) references cliente(idCliente)
);



-- Criar tabela Equipes
create table equipes(
		idEquipes int primary key,
		Especialidade varchar(45) not null,
		Responsavel varchar(45) not null
);


-- Criar tabela Mecanicos
create table mecanicos(
		idMecanicos int auto_increment primary key,
		idEquipes int,
		Nome varchar(45) not null,
		CPF char(11) not null,
		Data_nacimento date not null, 
		Endereco varchar(45) not null,
        	CEP char(8) not null,
        	Cidade varchar(45),
        	Estado char(2),
		Especialidade varchar(45) not null,
		Telefone char(11) not null,
		constraint fk_mecanicos_equipes foreign key (idEquipes) references equipes(idEquipes)
);



-- Criar tabela Serviços
create table servicos(
		idServicos int auto_increment primary key,
		Tipo_servico enum('Conserto','Revisão') not null,
        	Especialidade enum('Motor', 'Suspensão', 'Eletrica', 'Carroceria') not null, 
		Pecas_nescessarias varchar(45),
		Quantidade_pecas float,
		Preco_peca float,
		Valor_mao_obra float not null,
		Valor_total float not null
 );
 
 
 -- Criar tabela Estoque de Peças
CREATE TABLE estoque_pecas (
    idEstoque_pecas INT AUTO_INCREMENT PRIMARY KEY,
    Nome_peca VARCHAR(45) NOT NULL,
    Quantidade_disponivel INT NOT NULL,
    Valor_unitario FLOAT NOT NULL
);


-- Criar tabela Ordem de Serviço 
create table ordem_servico(
		idOrdem_servico int auto_increment primary key,
        idVeiculo int,
        idEquipes int,
        Numero char(8) not null,
        Data_emissao date  not null,
	pecas_necessarias varchar(45), 
        Valor float,
        Status_ordem enum('Em execução', 'Concluida','Cancelada'),
        Data_conclusao date,
        constraint fk_ordem_veiculo foreign key (idVeiculo) references veiculo(idVeiculo),
        constraint fk_ordem_equipes foreign key (idEquipes) references equipes(idEquipes)
);


-- Criar tabela Pecas para ordem de serviço
create table pecas_os(
        idPecas_estoque_pecas int,
        idPecas_ordem_servico int,
        constraint fk_pecas_estoque_pecas foreign key (idPecas_estoque_pecas) references estoque_pecas(idEstoque_pecas),
        constraint fk_pecas_ordem_servicos foreign key (idPecas_ordem_servico) references ordem_servico(idOrdem_servico)
);



-- Criar tabela Serviços_OS
create table servicos_os(
        idServico_ordem_de_servico int,
        idServico_servicos int,
        constraint fk_servicos_ordem_de_servico foreign key (idServico_ordem_de_servico) references ordem_servico(idOrdem_servico),
        constraint fk_servico_servicos foreign key (idServico_servicos) references servicos(idServicos)
);



show tables;








