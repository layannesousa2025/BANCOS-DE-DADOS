SELECT p.nome AS vendedor, SUM(iv.valor_total) FROM intens_vendas iv
INNER JOIN venda v ON v.id_venda = iv.id_venda
INNER JOIN vendedor vd ON vd.id_vendedor = v.id_vendedor
INNER JOIN pessoa p ON p.id_pessoa = vd.id_pessoa

GROUP BY p.nome

