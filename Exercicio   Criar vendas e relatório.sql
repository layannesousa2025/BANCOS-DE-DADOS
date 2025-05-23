# Criar uma duas vendas com vendedores diferentes e colocar os itens da venda nela, fazer como os exemplos da aula.
# Criar duas Vendas
# Adicionar 5 Itens em cada Venda
# Depois criar um relatório com o valor total das vendas de cada vendedor;

SELECT * FROM intens_vendas;

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(5,0,23,(SELECT preco FROM produto where id_produto = 6),
(preco * quantidade)-desconto + acrescimo,4,6);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(2,0,65,(SELECT preco FROM produto where id_produto = 7),
(preco * quantidade)-desconto + acrescimo,4,7);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(3,0,14,(SELECT preco FROM produto where id_produto = 8),
(preco * quantidade)-desconto + acrescimo,4,8);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(6,0,9,(SELECT preco FROM produto where id_produto = 9),
(preco * quantidade)-desconto + acrescimo,4,9);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(5,0,40,(SELECT preco FROM produto where id_produto = 10),
(preco * quantidade)-desconto + acrescimo,4,10);






INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(4,0,20,(SELECT preco FROM produto where id_produto = 6),
(preco * quantidade)-desconto + acrescimo,5,6);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(2,0,10,(SELECT preco FROM produto where id_produto = 7),
(preco * quantidade)-desconto + acrescimo,5,7);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(3,0,15,(SELECT preco FROM produto where id_produto = 8),
(preco * quantidade)-desconto + acrescimo,5,8);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(6,0,33,(SELECT preco FROM produto where id_produto = 9),
(preco * quantidade)-desconto + acrescimo,5,9);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(5,0,65,(SELECT preco FROM produto where id_produto = 10),
(preco * quantidade)-desconto + acrescimo,5,10);





