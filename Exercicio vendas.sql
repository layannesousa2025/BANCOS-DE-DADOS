CREATE DATABASE vendas;
USE vendas;
SHOW TABLES; 

CREATE TABLE pessoa( 
id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45)  UNIQUE NOT NULL,
cpf VARCHAR(15)NOT NULL,
email VARCHAR(45),
telefone VARCHAR(20),
situacao CHAR(1) NOT NULL DEFAULT 'A');
SELECT * FROM pessoa;

CREATE TABLE vendedor( 
id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
salario DECIMAL(10,2),
matricula VARCHAR (20),
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa));
SELECT * FROM vendedor;

CREATE TABLE cliente(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
fidelidade VARCHAR(20),
desconto DECIMAL(10,2),
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa));
SELECT * FROM cliente;

CREATE TABLE venda(
id_venda INT PRIMARY KEY AUTO_INCREMENT,
data_compra DATETIME DEFAULT CURRENT_TIMESTAMP,
valor_total  DECIMAL(10,2),
desconto DECIMAL(10,2),
acrescimo DECIMAL(10,2),
cupom DECIMAL(10,2),
id_vendedor INT NOT NULL,
id_cliente INT NOT NULL,
id_forma_pagamento INT,
FOREIGN KEY (id_vendedor) REFERENCES vendedor (id_vendedor),
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY (id_forma_pagamento) REFERENCES forma_pagamento (id_forma_pagamento));
SELECT * FROM venda;

CREATE TABLE forma_pagamento(
id_forma_pagamento INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR(45) NOT NULL,
parcela INT NOT NULL,
prazo VARCHAR(45) NOT NULL);
SELECT * FROM forma_pagamento;


CREATE TABLE intens_vendas(
id_intens_vendas INT PRIMARY KEY AUTO_INCREMENT,
desconto DECIMAL(10,2),
acrescimo DECIMAL(10,2),
quantidade INT NOT NULL,
preco DECIMAL(10,2) NOT NULL,
valor_total DECIMAL(10,2) NOT NULL,
cancelado CHAR(1) NOT NULL DEFAULT 'N',
id_venda INT NOT NULL,
id_produto INT NOT NULL,
FOREIGN KEY (id_venda) REFERENCES forma_venda (id_venda),
FOREIGN KEY (id_produto) REFERENCES produto(id_produto));
SELECT * FROM intens_vendas;

CREATE TABLE produto(
id_produto INT PRIMARY KEY AUTO_INCREMENT,
denominacao VARCHAR(45),
estoque INT NOT NULL,
preco DECIMAL (10,2) NOT NULL,
situcao CHAR(1) NOT NULL DEFAULT 'A');

ALTER TABLE produto 
ADD quantidade_estoque INT NOT NULL;

CREATE TABLE endereco(
id_endereco INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(20) NOT NULL,
bairro VARCHAR(20) NOT NULL,
cidade VARCHAR(20) NOT NULL,
uf CHAR(2) NOT NULL,
cep VARCHAR(15) NOT NULL,
situacao CHAR(1) NOT NULL DEFAULT 'A',
id_pessoa INT NOT NULL,
FOREIGN KEY(id_pessoa) REFERENCES pessoa(id_pessoa));
SELECT * FROM endereco;


INSERT INTO pessoa(nome,cpf,email,telefone)
VALUES('Lay Sousa','5325334','LayS@GMAIL.COM','(61)9943211'),
('Paulo Vinicios','453444','PauloV@gmail.com','(61)9234237'),
('Maria Silva','4534534','MariaS@gamil.com','(61)9355235'),
('João Paulo','4534545','joãoP@gmail.com','(61)9423434'),
('Carlos Vinicio','45646664','CarlosV@gmail.com','(61)9345456'),
('Andreia Almedida','94588435','AndreiaA@gmail.com','(61)9394839'),
('Gabriel Oliveira','234324','GabrielO@gmail.com','(61)9234238'),
('Alexande Talles','4234235','AlexandeTLL@gmail.com','(61)9534543'),
('Joana Paula','5464566','JoanaP@gmail.com','(61)9532434'),
('Marcos Santos','3243255','MarcosMs@gmail.com','(61)9343243');
 SELECT * FROM pessoa;

INSERT INTO endereco(rua,bairro,cidade,uf,cep,id_pessoa)
VALUES
('Avenida-Rorizão','Samambaia_norte','brasilia','DF','453245',1),
('Qng','taguatigua','brasilia','DF','3432323',2),
('metropolitano','nucleo baderante','brasilia','DF','3432323',3),
('avenida-contorno','nucleo baderante','brasilia','DF','233423',4);
 SELECT * FROM endereco;

INSERT INTO vendedor(salario,matricula,id_pessoa)
VALUES
(1000,'v45345345',6),
(2500,'v45345453',7),
(2400,'v33535535',10),
(1450,'v65767547',9),
(1360,'v57457569',8);
 SELECT * FROM vendedor;


INSERT INTO cliente(fidelidade,desconto,id_pessoa)
VALUES
('nao tem desconto','00.0',4),
('desconto','10.2',5),
('desconto','10.2',3),
('nao tem desconto','00.0',2),
('nao tem desconto','00.0',1);
 SELECT * FROM cliente;


INSERT INTO forma_pagamento(descricao,parcela,prazo)
VALUES('pagamento efetuado',12,'30 Dias'),
('pagamento pendente','5','15dias'),
('pagamento cancelado','0','20dias');
 SELECT * FROM forma_pagamento;



INSERT INTO venda( valor_total, desconto, id_cliente, id_vendedor, id_forma_pagamento)
VALUES ( 0, 0, 1, 2, 1),
       ( 0, 0, 2, 1, 3);
SELECT * FROM venda;

UPDATE venda SET id_forma_pagamento = null WHERE id_venda >0

INSERT INTO produto(denominacao,estoque, preco)
VALUES 
  ('camiseta', 50, 35.45),
  ('calca', 100, 135.99),
  ('calçado', 45, 60.00),
  ('boné', 70, 35.45),
  ('shots', 65, 155.00),
  ('blusa de frio', 200, 250.00),
  ('calsa moletom', 270, 305.50),
  ('mochila', 160, 270.00),
  ('sandalia avahinana', 340, 50.40),
  ('lenço', 15, 10.20);
SELECT * FROM produto;



INSERT INTO intens_vendas(quantidade, preco, valor_total, id_venda, id_produto)
VALUES (1, 70.00, 80.00, 1, 1);

INSERT INTO intes_vendas(desconto,acrescimo,quantidade,preco,valor_total,id_vendas,id_produto)
VALUES(2,0,3,(SELECT preco FROM produto where id_produto = 4),
(preco * quantidade)-desconto + acrescimo,2,4);

