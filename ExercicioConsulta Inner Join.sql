#Dados para o relatório com os dados da Consulta: 
#Data do Agendamento 
#Situação 
#Nome do Medico 
#Especialidade do Medico

SELECT
 p.nome,
c.agendamento,
c.situacao_consulta,
m.especialidade 
FROM consulta c #id_medico id_paciente
INNER JOIN medico m ON m.id_medico = c.id_medico #id_pessoa
INNER JOIN pessoa p ON p.id_pessoa = m.id_pessoa;

SELECT *FROM medico;