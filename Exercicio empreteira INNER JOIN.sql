CREATE DATABASE empreteira01;
USE empreteira01;
SHOW TABLES;

CREATE TABLE pessoa(
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) UNIQUE NOT NULL,
cpf_cnpj VARCHAR(45) NOT NULL,
telefone VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
nome_fantacia VARCHAR(45) NOT NULL,
situacao CHAR(1) NOT NULL DEFAULT 'A');
SELECT * FROM pessoa;


CREATE TABLE empreteira(
id_empreteira INT PRIMARY KEY AUTO_INCREMENT,
area_atuacao VARCHAR(45) NOT NULL,
tipo_contrato VARCHAR(45) NOT NULL,
situcao CHAR(1) NOT NULL DEFAULT 'A',
prazo VARCHAR(45) NOT NULL,
data_entrega DATE NOT NULL,
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa));
SELECT * FROM empreteira;

CREATE TABLE colaborador(
id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
salario DECIMAL(10,2),
matricula VARCHAR(20) NOT NULL,
funcao VARCHAR(20) NOT NULL,
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa));
SELECT * FROM colaborador;


CREATE TABLE projeto (
    id_projeto INT PRIMARY KEY AUTO_INCREMENT,
    nome_projeto VARCHAR(50) NOT NULL,
    data_inicio DATE NOT NULL,
    prazo VARCHAR(20) NOT NULL,
    data_entrega DATE NOT NULL,
    valor_projeto INT NOT NULL,
    id_colaborador INT NOT NULL,
    FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_colaborador));
SELECT *FROM projeto;



CREATE TABLE obra(
id_obra INT PRIMARY KEY AUTO_INCREMENT,
data_inicio DATE NOT NULL,
prazo VARCHAR(20) NOT NULL,
data_entrega DATE NOT NULL,
valor_obra INT(20) NOT NULL,
situacao_obra CHAR(1) NOT NULL DEFAULT 'A',
id_empreteira INT NOT NULL,
id_projeto INT NOT NULL,
FOREIGN KEY (id_empreteira) REFERENCES empreteira(id_empreteira),
FOREIGN KEY (id_projeto) REFERENCES projeto(id_projeto));
SELECT *FROM obra;



CREATE TABLE canteiro_obra(
id_canteiro_obra INT PRIMARY KEY AUTO_INCREMENT,
id_obra INT NOT NULL,
id_colaborador INT NOT NULL);
SELECT *FROM canteiro_obra;

ALTER TABLE pessoa MODIFY endereco VARCHAR(255) NOT NULL DEFAULT 'Endereço não informado';


INSERT INTO pessoa(nome,cpf_cnpj,email,telefone,nome_fantacia)
VALUES('layanne Sousa','3325552','lay@gmail.com','(61)95956720','null'),
('Maria da Silva','4237472','MariaS@gmail.com','(61)95923730','null'),
('Marcos Santos','985734','MarcosS@gmail.com','(61)95223730','null'),
('costrutora de casa','3243232','casa feliz','(61)9234233','cost@gmail.com'),
('demolicao e construcao','435435','quebra contrucao','(61)9343223','dc@gmail.com');
SELECT * FROM pessoa;



INSERT INTO empreteira(area_atuacao, tipo_contrato, prazo, data_entrega, id_pessoa) 
VALUES 
   ('costrutora de casa','contrato variados',45,'2025-04-03',1),
   ('contrucao civil','contratos variados',35,'2025-05-10',2);
SELECT *FROM empreteira;


ALTER TABLE empreteira ADD COLUMN prazo INT;
ALTER TABLE empreteira ADD COLUMN data_entrega DATE;
ALTER TABLE empreteira ADD COLUMN id_colaborador INT;


ALTER TABLE colaborador ADD COLUMN id_pessoa INT;

INSERT INTO colaborador(salario,matricula,funcao,id_pessoa)
VALUES(8500,'737643','gerente',1),
(2390,'42372','arquiteta',2),
(1500,'085134','pintor',3);

SELECT * FROM colaborador;


INSERT INTO projeto (nome_projeto, data_inicio, prazo, data_entrega, valor_projeto, id_colaborador)
VALUES
  ('comanda', '2025-03-05', 30, '2025-05-01', 1000, 3),
  ('construcao', '2025-01-01', 50, '2025-06-04', 25000, 2),
  ('pintura_reboco', '2025-04-03', 15, '2025-04-25', 1450, 1);
  SELECT * FROM projeto;

  ALTER TABLE projeto ADD COLUMN nome VARCHAR(255);
  ALTER TABLE projeto ADD COLUMN id_colaborador INT;
  ALTER TABLE projeto MODIFY COLUMN nome_projeto VARCHAR(255) DEFAULT 'Nome do Projeto';
  
  INSERT INTO obra(data_inicio,prazo,data_entrega,valor_obra,id_empreteira,id_projeto)
VALUES('2025-04-12',12,'2025-05-20',1450,1,1),
('2025-10-09',15,'2025-11-21',2250,2,2),
('2025-10-09',15,'2025-11-21',2350,1,3);
 SELECT * FROM obra;


ALTER TABLE obra ADD COLUMN id_empreteira INT;
 ALTER TABLE obra ADD COLUMN id_projeto INT;
  
   SELECT *FROM canteiro_obra;
INSERT INTO canteiro_obra(id_colaborador,id_obra)
VALUES
  (1,1),
  (2,2),
  (3,3);

