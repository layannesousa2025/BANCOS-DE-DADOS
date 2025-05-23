SELECT p.nome,pd.denominacao,iv.quantidade,iv.preco,iv.valor_total FROM intens_vendas iv
INNER JOIN produto pd ON pd.id_produto = iv.id_produto
INNER JOIN venda v ON v.id_venda = iv.id_venda
INNER JOIN cliente cl ON cl.id_cliente = v.id_cliente
INNER JOIN pessoa p ON p.id_pessoa = cl.id_pessoa;

SELECT * FROM pessoa; 



