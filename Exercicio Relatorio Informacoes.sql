# Você foi contratado para fazer um relatório , o seu chefe pediu os seguintes dados:
# Nome da Empresa Responsável pela Obra
# Nome do Projeto
# Data do inicio da obra
# Data do início do projeto
# Valor do Projeto
# Valor da Obra
# Situação da Obra

SELECT ps.nome,pj.data_inicio,pj.valor_projeto,pj.nome_projeto,ob.data_inicio, ob.valor_obra, ob.situacao_obra FROM obra ob
INNER JOIN projeto pj ON pj.id_projeto = ob.id_projeto
INNER JOIN empreteira em ON em.id_empreteira = ob.id_empreteira
INNER JOIN pessoa ps ON ps.id_pessoa = ob.id_pessoa;



SELECT * FROM pessoa;