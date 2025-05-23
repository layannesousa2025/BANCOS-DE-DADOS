CREATE DATABASE empreteira01;
USE empreteira01;
SHOW TABLES;

CREATE TABLE pessoa(
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
cpf_cnpj VARCHAR(45) NOT NULL,
telefone VARCHAR(45) NOT NULL,
email VARCHAR (45) NOT NULL,
nome_fantacia VARCHAR(45) NOT NULL,
situacao CHAR(1) NOT NULL DEFAULT 'A');
SELECT * FROM pessoa;

CREATE TABLE empreteira(
id_empreteira INT PRIMARY KEY AUTO_INCREMENT,
area_atuacao VARCHAR(45) NOT NULL,
tipo_contrato VARCHAR(45) NOT NULL,
situacao CHAR(1) NOT NULL DEFAULT 'A',
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
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE,
    id_empreteira INT,
    FOREIGN KEY (id_empreteira) REFERENCES empreteira(id_empreteira));
    SELECT * FROM projeto;


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
 SELECT * FROM obra;


CREATE TABLE canteiro_obra(
id_canteiro_obra INT PRIMARY KEY AUTO_INCREMENT,
id_obra INT NOT NULL,
id_colaborador INT NOT NULL);
SELECT * FROM canteiro_obra;

INSERT INTO pessoa(nome,cpf_cnpj,email,telefone,nome_fantacia)
VALUES('layanne Sousa','3325552','lay@gmail.com','(61)95956730','null'),
('Maria da Silva','4237472','MariaS@gmail.com','(61)95923730','null'),
('Marcos Santos','985734','MarcosS@gmail.com','(61)95223730','null'),
('costrutora de casa','3243232','casa feliz','(61)9234233','cost@gmail.com'),
('demolicao e construcao','435435','quebra contrucao','(61)9343223','dc@gmail.com');
SELECT * FROM pessoa;

INSERT INTO empreteira(area_atuacao, tipo_contrato, id_pessoa)
VALUES
   ('costrutora de casa','contrato variados',8),
   ('contrucao civil','contratos variados',9);
SELECT *FROM empreteira;

INSERT INTO colaborador(salario,matricula,funcao,id_pessoa)
VALUES(8500,'737643','gerente',2),
(2390,'42372','arquiteta',1),
(1500,'085134','pintor',4),
(2700,'4232423','predeiro',3);
SELECT *FROM colaborador;

INSERT INTO projeto (nome, data_inicio, prazo, data_entrega, valor_projeto, id_colaborador)
VALUES
  ('comanda', '2025-03-05', 30, '2025-05-01', 1000, 1),
  ('construcao', '2025-01-01', 50, '2025-06-04', 25000, 2),
  ('pintura_reboco', '2025-04-03', 15, '2025-04-25', 1450, 3),
  ('predeiro_casa', '2025-08-08', 150, '2026-03-16', 30000, 4);
SELECT * FROM projeto;

INSERT INTO obra(data_inicio,prazo,data_entrega,valor_obra,id_empreteira,id_projeto)
VALUES('2025-04-12',12,'2025-05-20',1.450,1,2),
('2025-10-09',12,'2025-11-21',2.250,3,4),
('2025-03-16',12,'2025-05-19',1.000,2,3),
('2025-08-28',12,'2025-10-14',1.780,3,4);
SELECT * FROM obra;

INSERT INTO canteiro_obra(id_colaborador,id_obra)
VALUES
  (1,2),
  (2,3),
  (3,4),
  (4,1);
  



