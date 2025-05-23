CREATE DATABASE sistema_escola;
USE sistema_escola;
SHOW TABLES;

CREATE TABLE pessoa(
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)NOT NULL,
cpf VARCHAR(15)NOT NULL,
idade INT NOT Null,
situacao CHAR(1) NOT NULL DEFAULT 'A');
SELECT * FROM pessoa;

CREATE TABLE aluno(
id_aluno INT PRIMARY KEY AUTO_INCREMENT,
matricula VARCHAR(20),
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa)); 
SELECT * FROM aluno;

CREATE TABLE professor(
id_profesor INT PRIMARY KEY AUTO_INCREMENT,
matricula VARCHAR(20),
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa)); 
SELECT * FROM professor;

CREATE TABLE turma(
id_turma INT PRIMARY KEY AUTO_INCREMENT,
numero_sala VARCHAR(10) NOT NULL,
capacidade VARCHAR(50) NOT NULL,
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa)); 
SELECT * FROM turma;

CREATE TABLE curso(
id_curso INT PRIMARY KEY AUTO_INCREMENT,
carga_horaria VARCHAR(10) NOT NULL,
data_inicio DATE NOT NULL,
data_fim DATE NOT NULL,
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa)); 
SELECT * FROM curso;

CREATE TABLE endereco(
id_endereco INT PRIMARY KEY AUTO_INCREMENT,
cidade VARCHAR(45) NOT NULL,
rua VARCHAR (45) NOT NULL,
bairro VARCHAR(45) NOT NULL,
cep VARCHAR(45) NOT NULL,
uf VARCHAR (11) NOT NULL,
situacao CHAR(2) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa)); 
SELECT * FROM endereco;



SELECT * FROM pessoa;
INSERT INTO pessoa(nome,cpf,idade)
VALUE('Marcos','453453434','25'),
('Andreia silva','4534544','22'),
('Bruno Oliveira','543534545','33');

SELECT * FROM aluno;
INSERT INTO aluno(situacao,matricula,id_pessoa)
VALUES('A','4235525',1);

SELECT * FROM professor;
INSERT INTO professor(matricula,id_pessoa)
VALUE('45345345',2);

SELECT * FROM turma;
INSERT INTO turma(numero_sala, capacidade,id_pessoa)
VALUE('23','20',3);

SELECT * FROM curso;
INSERT INTO curso(carga_horaria, data_inicio, data_fim, id_pessoa)
VALUE('12:00:31','2025-04-12','2025-04-30',3);


SELECT * FROM endereco;
INSERT INTO endereco(cidade, rua, bairro,cep,uf, id_pessoa)
VALUE('brasilia','taguatinga','545466','QNG','DF',3);















