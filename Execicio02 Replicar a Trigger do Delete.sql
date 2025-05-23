CREATE TABLE pessoas_deletadas(
id_pessoas_deletadas INT PRIMARY KEY AUTO_INCREMENT,
data_deletado DATETIME DEFAULT CURRENT_TIMESTAMP,
nome VARCHAR(45),
cpf VARCHAR(20),
email VARCHAR(25),
id_pessoa INT);



DELIMITER //
CREATE TRIGGER pessoa_deletadas
BEFORE DELETE
ON pessoa FOR EACH ROW
BEGIN
INSERT INTO pessoas_deletadas (nome,cpf,email,id_pessoa)
VALUES(OLD.nome,OLD.cpf,OLD.email,OLD.id_pessoa);
END
//


DROP TRIGGER pessoa_deletadas

SELECT * FROM pessoas_deletadas;


DELETE FROM pessoa WHERE id_pessoa = 11;