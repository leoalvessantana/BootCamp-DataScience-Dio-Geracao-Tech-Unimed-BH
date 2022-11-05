# Projeto de Banco de Dados

## Escopo de Universidade:

Contexto:
* O  O foco é Ensino, considerando apenas:  Disciplina, Aluno, Professor, Curso e Coordenação.


### Narrativa - Alunos
* A univerdidade possui diversos alunos que podem estar matriculados em mais de um curso (graduação).
* Os alunos podem fazer cursos extras fornecidos externa e internamente (universidade) para contar como horas complementares.
* Não há restrição quanto ao número de matérias puxadas se não houver sobreposição de horário.
* Os alunos são submetidos a duas provas por semestre para cada disciplina. Eventuais trabalhos devem ser tratados pelo professor para compor a nota da prova.


### Narrativa - Disciplina
* Cada disciplina é fornecida por um professor. Restrição: apenas por este professor.
* Algumas disciplinas possuem pré-requisitos. Um mesmo pré-requisito pode ser associado a mais de uma disciplina.
* As disciplinas podem ser comuns a cursos distintos. Ex: Cálculo 1 para Ciência da computação e engenharia.
* O ciclo de vida da disciplina é semestral.

### Narrativa - Professores
* Os professores que ministram as disciplinas estão associados as coordenações de seus respectivos cursos. Ex: Computação, Física, Engenharia...

## Perguntas:
* Quais informações de aluno e professor guardar?
* Qual média para aprovação?
* Haverá restrição, ou diferentes visões?

## Software usado para modelagem
* MySQL Workbench

