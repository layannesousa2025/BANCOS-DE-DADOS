# Dados para o relatório com os dados da Consulta: 
# Data do Agendamento 
# Situação 
# Nome do Medico 
# Especialidade do Medico
# Nome do Paciente
# Plano de Saude
# Numero da Carteirinha

SELECT pc.nome,pa.plano_saude,pa.codigo_carterinha,p.nome,m.especialidade,co.data_consulta,status_consuta  FROM consulta co # id_medico id_paciente
INNER JOIN medico m ON m.id_medico = co.id_medico #id_pessoa ele é pessoa Medico
INNER JOIN pessoa p ON m.id_pessoa = p.id_pessoa # pessoa medico = id_pessoa do medico
INNER JOIN paciente pa ON pa.id_paciente = co.id_paciente
INNER JOIN pessoa pc ON pc.id_pessoa = pa.id_pessoa;


SELECT * FROM pessoa;

UPDATE paciente SET plano_saude = 'Amil', codigo_carterinha ='DS46545' WHERE id_paciente = 3;
 


