#O seu chefe pediu um relatorio dos dados do paciente:
#Nome,cpf,idade,plano de saude,numeroda carterinha

SELECT

 ps.nome,
 ps.cpf,
 p.plano_saude,
 p.codigo_carterinha From paciente p #id_pessoa
INNER JOIN pessoa ps on p.id_pessoa= ps.id_pessoa;



