# Preciso de um relatório com os valores do projeto e os valores da obra, também quero saber o valor da soma das duas colunas ,quero saber o no nome do projeto : 
# Nome do projeto
# Valor do Projeto
# Valor da Obra
# Valor total de Projeto com a Obra


SELECT pj.nome_projeto,
pj.valor_projeto,
o.valor_obra,
(valor_projeto + valor_obra)
FROM obra o
INNER JOIN projeto pj ON pj.id_projeto = o.id_projeto;