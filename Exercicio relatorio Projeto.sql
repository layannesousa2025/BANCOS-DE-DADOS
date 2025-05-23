# Crie um relatório com o nome da Pessoa responsável pelo Projeto, nome do Projeto, matricula do Colaborador , salario do Colaborador e a função dele.

SELECT 
p.nome, 
c.matricula,
c.funcao,
c.salario,
pj.nome_projeto

FROM projeto pj #id_colaborador
INNER JOIN colaborador c ON c.id_colaborador = pj.id_colaborador #id_pessoa
INNER JOIN pessoa p ON p.id_pessoa = c.id_pessoa;