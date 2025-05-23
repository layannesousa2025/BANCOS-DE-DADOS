# Criar um relatório de funcionários envolvido na obra:
# Quais os nomes dos  funcionários estão no canteiro de obra.
# Função de cada um.
# Salario
# Qual obra do projeto estão trabalhando
# Quem fez o projeto e a função dele como colaborador.
# Valor do projeto
# Valor da obra
# Qual data inicio da obra
# Qual empresa estão atuando na obra.


SELECT
 p3.nome AS empresa_responsavel,
 p.nome,
 c.funcao AS f_canteiro,
 c.salario AS s_canteiro,
 p2.nome,
 c2.funcao AS f_projeto,
 c2.salario AS s_projeto,
 pj.nome_projeto,
 pj.valor_projeto,
 o.data_inicio,
 o.valor_obra,
 (pj.valor_projeto + o.valor_obra) AS valor_total # Total Dos Valores
 FROM canteiro_obra co #id_obra id_colaborador

 INNER JOIN colaborador c ON c.id_colaborador = c.id_colaborador #id_pessoa
 INNER JOIN pessoa p ON p.id_pessoa = c.id_pessoa
 INNER JOIN obra o ON o.id_obra = co.id_obra # id_empreiteira id_projeto
 INNER JOIN projeto pj ON pj.id_projeto = o.id_projeto #id_colaborador
 INNER JOIN colaborador c2 ON c2.id_colaborador = pj.id_colaborador #id_2pessoa
 INNER JOIN pessoa p2 ON p2.id_pessoa = c2.id_pessoa
 INNER JOIN empreiteira ep ON ep.id_empreiteira = o.id_empreiteira #id_pessoa
 INNER JOIN pessoa p3 ON p3.id_pessoa = ep.id_pessoa;
 
 
 