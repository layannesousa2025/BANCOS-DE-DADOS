-- CREATE DATABASE empreteira;
-- USE empreteira;
SHOW TABLES; 

-- CREATE TABLE pessoa( ## Criando a tabela pessoa
-- id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
-- nome VARCHAR(45)NOT NULL,
-- cpf_cnpj VARCHAR(15)NOT NULL,
-- email VARCHAR(45),
-- telefone VARCHAR(20),
-- situacao CHAR(1) NOT NULL DEFAULT 'A');
SELECT * FROM pessoa;

-- CREATE TABLE colaborador( ## Criando a tabela pessoa
-- id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
-- salario DECIMAL(10,2),
-- matricula VARCHAR (20),
-- funcao VARCHAR(20),
-- situacao CHAR(1) NOT NULL DEFAULT 'A');
SELECT * FROM colaborador;

CREATE TABLE obra( ## Criando a tabela pessoa
id_obra INT PRIMARY KEY AUTO_INCREMENT,
data_inicio DATE NOT NULL,
prazo CHAR(1) NOT NULL DEFAULT 'A',
data_entrega DATE NOT NULL,
valor_obra DECIMAL(10,2),
situacao VARCHAR(20),
FOREIGN KEY(id_obra) REFERENCES obra(id_obra),
FOREIGN KEY(id_colaborador) REFERENCES colaborador(id_calaborador));


DR
CREATE TABLE canteiro_obra( ## Criando a tabela pessoa
id_canteiro_obra INT PRIMARY KEY AUTO_INCREMENT,
id_obra  INT NOT NULL,
id_colaborador INT NOT NULL,

FOREIGN KEY(id_colaborador) REFERENCES colaborador(id_calaborador));
SELECT * FROM canteiro_obra;






