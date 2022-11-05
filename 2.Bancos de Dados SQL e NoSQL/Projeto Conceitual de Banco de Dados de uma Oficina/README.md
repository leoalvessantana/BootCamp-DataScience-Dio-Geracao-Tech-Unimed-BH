# Projeto de Banco de Dados

## Escopo da Oficina:
Contexto:
* Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica

### Narrativa - Cliente:
* Os clientes levam veiculos á oficina mêcanica para serem consertados ou para passarem por revisões periódicas.


### Narrativa - Equipe:
* Cada veiculo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma Ordem de serviço.

### Narrativa - Ordem de serviço (OS):
* Cada OS possui: nº, data de emissão, um valor, status e uma data para conclusão dos trabalhos.
* Uma OS pode ser composta por vários serviços e um mesmo serviço pode estar contido em mais de uma OS.
* Uma OS pode ter vários tipos de peça e uma peça pode estar presente em mais de uma OS.

### Narrativa - Valor da OS:
* O valor do serviço é calculado apartir de uma tabela de referência de mão-de-obra.
* Valor das peças utilizadas.

### Narrativa - Mecânicos:
* Os mecânicos possuem código, nome, endereço e especialidade.


## Software usado para modelagem
* MySQL Workbench

