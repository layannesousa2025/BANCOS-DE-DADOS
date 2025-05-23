DELIMITER //
CREATE TRIGGER retorna_estoque
AFTER UPDATE
ON itens_venda FOR EACH ROW
BEGIN
IF(OLD.cancelado<>NEW.cancelado) THEN
UPDATE produto SET quantidade_estoque = (quantidade_estoque + OLD.quantidade)
WHERE id_produto = NEW.id_produto;
END IF;
END
//
SELECT*FROM PRODUTO;
SELECT*FROM itens_venda ORDER BY id_itens_venda DESC LIMIT 3;
UPDATE itens_venda SET cancelado = 'S' 	WHERE id_itens_venda = 20;