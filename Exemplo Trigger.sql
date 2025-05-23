#Criação da tabela para a auditório:

CREATE TABLE historico_preco(
id_historico_preco INT PRIMARY KEY AUTO_INCREMENT,
data_alteracao DATETIME DEFAULT CURRENT_TIMESTAMP,
preco_antigo DECIMAL(10,2),
preco_novo DECIMAL(10,2),
id_produto INT,
FOREIGN KEY(id_produto) REFERENCES produto(id_produto));

#CRIANDO a trigger

DELIMITER //
CREATE TRIGGER auditoria_preco #pode colacar qualquer nome para a trigger
AFTER UPDATE # depois da update
ON produto FOR EACH ROW # na tabela produto,para cada linha begin #
IF(OLD.preco <> NEW.preco)THEN # ser o preço novo for diferente do preço antigo faça
INSERT INTO historico_preco(preco_antigo,preco_novo,id_produto)
VALUES(OLD.preco,NEW.preco,NEW.id_produto);
END IF; #fecha o if
END #Fecha o Begin
//
