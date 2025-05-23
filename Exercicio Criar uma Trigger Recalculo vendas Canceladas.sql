# Criar uma trigger retire do calculo os itens vendas cancelados da venda.
# Exemplo:
# Minha venda deu R$ 200,00 reais
# Um itens venda de 10 reais foi alterado de cancelado para 'S'.
# Venda vai ser atualizada para R$190,00


DELIMITER //
CREATE TRIGGER atualizar_vendas_canceladas
AFTER UPDATE
ON itens_vendas FOR EACH ROW
BEGIN
IF(NEW.cancelado <> OLD.cancelado) THEN
UPDATE venda SET valor_total = (SELECT SUM(valor_total) FROM
itens_vendas WHERE id_venda = NEW.id_venda AND cancelado = 'N')
WHERE id_venda = NEW.id_venda;
END IF;
END
//
 

UPDATE venda SET valor_total=(SELECT SUM(valor_total) FROM itens_vendas WHERE id_venda= 4 AND cancelado = 'S') WHERE id_venda = 4;

INSERT INTO itens_vendas(desconto,acrescimo,quantidade,id_venda,id_produto)
VALUES(0,0,7,4,5);

SELECT * FROM venda;
SELECT * FROM itens_vendas ORDER BY id_itens_vendas DESC LIMIT 1;







