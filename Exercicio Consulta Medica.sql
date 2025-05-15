CREATE DATABASE consulta_medica; ##criando o banco de dados
USE consulta_medica; ## Estou usando o banco de dados Consulta Medica
SHOW TABLES; ## mostra todas as tabelas do banco de dados conectado
CREATE TABLE pessoa( ## Criando a tabela pessoa
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)NOT NULL,
cpf VARCHAR(15)NOT NULL,
email VARCHAR(45),
data_nascimento DATE NOT NULL,
telefone VARCHAR(20),
situacao CHAR(1) NOT NULL DEFAULT 'A');
SELECT * FROM pessoa;

CREATE TABLE medico(
id_medico INT PRIMARY KEY AUTO_INCREMENT,
salario DECIMAL(10,2),
crm VARCHAR(15) NOT NULL,
especialidade VARCHAR(45) NOT NULL,
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa)); ## fazendo a amarraçao tabela pesssoa com medico
SELECT * FROM medico;

CREATE TABLE paciente(
id_paciente INT PRIMARY KEY AUTO_INCREMENT,
plano_saude VARCHAR(25),
codigo_carterinha VARCHAR(25),
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa));
SELECT * FROM paciente;

CREATE TABLE consulta(
id_consuta INT PRIMARY KEY AUTO_INCREMENT,
data_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
data_consulta DATETIME NOT NULL,
status_consuta VARCHAR(20) NOT NULL DEFAULT 'Agendado',
data_conclusao DATETIME,
id_medico INT NOT NULL,
id_paciente INT NOT NULL,
FOREIGN KEY (id_medico) REFERENCES medico (id_medico),
FOREIGN KEY (id_paciente) REFERENCES paciente (id_paciente));
SELECT * FROM consulta;
