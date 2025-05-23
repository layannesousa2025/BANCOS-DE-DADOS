# Criar uma  trigger para recalcular o estoque automaticamente após a realização de uma venda.
# A trigger deve obter a quantidade do item vendido na tabela 'ItensVenda' e subtrair esse valor da quantidade em estoque registrada na tabela 'Produto'.

DELIMITER //
CREATE TRIGGER atualize_estoque
AFTER INSERT
ON itens_vendas FOR EACH ROW
BEGIN
UPDATE produto SET quantidade_estoque = (quantidade_estoque - NEW.quantidade) WHERE id_produto = NEW.id_produto;
END
//


INSERT INTO itens_vendas(desconto,acrescimo,quantidade,id_venda,id_produto)
VALUES(0,0,4,1,3);


SELECT * FROM itens_vendas
USE VENDAS
SELECT * FROM VENDA




