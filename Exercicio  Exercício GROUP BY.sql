SELECT
p.nome,
SUM(o.valor_obra)


FROM obra o
INNER JOIN  empreiteira em ON em.id_empreiteira = o.id_empreiteira
INNER JOIN pessoa p ON p.id_pessoa = em.id_pessoa

GROUP BY p.nome

