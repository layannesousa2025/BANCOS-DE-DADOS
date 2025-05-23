
INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(3,0,45,(SELECT preco FROM produto where id_produto = 1),
(preco * quantidade)-desconto + acrescimo,3,1);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(4,0,45,(SELECT preco FROM produto where id_produto = 2),
(preco * quantidade)-desconto + acrescimo,3,2);


INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(3,0,100,(SELECT preco FROM produto where id_produto = 3),
(preco * quantidade)-desconto + acrescimo,3,3);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(10,0,22,(SELECT preco FROM produto where id_produto = 4),
(preco * quantidade)-desconto + acrescimo,3,4);

INSERT INTO intens_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_venda,id_produto)
VALUES(5,0,40,(SELECT preco FROM produto where id_produto = 5),
(preco * quantidade)-desconto + acrescimo,3,5);



