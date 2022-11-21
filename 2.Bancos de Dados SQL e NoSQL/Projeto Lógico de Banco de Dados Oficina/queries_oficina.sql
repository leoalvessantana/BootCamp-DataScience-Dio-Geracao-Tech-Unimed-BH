use Oficina;

show tables;

# quantos veiculos tem cada clinte?
select Nome_Completo, count(*) as numero_de_veiculos from cliente
inner join veiculo on veiculo.idCliente=cliente.idCliente
group by veiculo.idCliente;

-- Quais os clientes que possuem carro e qual a marca e modelo do carro?
select cliente.Nome_Completo, Tipo_veiculo, Marca, Modelo from veiculo
		inner join cliente on veiculo.idCliente=cliente.idCliente
        having Tipo_veiculo = "Carro";
        
        
-- Qual a especialidade, o responsavel e o numero de mecanicos de cada equipe?                       
select equipes.idEquipes,equipes.Especialidade, equipes.Responsavel, count(*) as total_de_mecanicos from equipes
inner join mecanicos on equipes.idEquipes=mecanicos.idEquipes
group by mecanicos.idEquipes;
                 
        
-- Cada equipe esta responsavel por quantas OS?
select distinct idEquipes, count(*) as total_de_OS from ordem_servico
group by idEquipes;


-- Quantas OS existem e quantas ja foram concluidas?
select count(*) as total_OS from ordem_servico;
select count(*) as OS_concluida from ordem_servico where Status_ordem = 'Concluida'; 


        
-- Quais as peças presentes no estoque?
select nome_peca from estoque_pecas order by nome_peca;
        
        
                
        