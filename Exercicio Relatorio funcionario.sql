# Criar um relatório de funcionários envolvido na obra:
# Quais os nomes dos  funcionários estão no canteiro de obra. *
# Função de cada um. *
# Salario *
# Qual obra do projeto estão trabalhando *
# Qual data inicio da obra *
# Qual empresa estão atuando na obra.

SELECT p.nome,cl.funcao,cl.salario,pj.nome_projeto, em.area_atuacao, ob.data_inicio
FROM obra ob
INNER JOIN empreteira em ON em.id_empreteira = ob.id_empreteira
INNER JOIN projeto pj ON pj.id_projeto = ob.id_projeto
INNER JOIN colaborador cl ON cl.id_colaborador = pj.id_colaborador
INNER JOIN pessoa p ON p.id_pessoa = cl.id_pessoa;
