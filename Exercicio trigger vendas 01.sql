DELIMITER //
CREATE TRIGGER atualizar_venda
BEFORE INSERT
ON itens_vendas FOR EACH ROW
BEGIN
SET NEW.preco=(SELECT preco FROM produto WHERE id_produto = NEW.id_produto),
NEW.valor_total=((NEW.preco * NEW.quantidade)-NEW.desconto + NEW.acrescimo);
END
//

SELECT * FROM vendas;