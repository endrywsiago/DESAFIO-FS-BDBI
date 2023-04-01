CREATE DATABASE desafio_final_sql;

USE desafio_final_sql;

CREATE TABLE escola(
nome VARCHAR(100),
cnpj BIGINT NOT NULL,
abre TIME,
PRIMARY KEY(cnpj)
);
CREATE TABLE aluno(
nome VARCHAR(100),
matricula 	INT NOT NULL,
data_matricula DATE,
PRIMARY KEY(matricula)
);

CREATE TABLE professor(
nome VARCHAR(100),
telefone INT,
cpf BIGINT NOT NULL,
salario FLOAT,
PRIMARY KEY(cpf)
);


ALTER TABLE escola ADD COLUMN telefone INT;
ALTER TABLE aluno ADD COLUMN email VARCHAR(100);
ALTER TABLE professor ADD COLUMN materia VARCHAR(100);

INSERT INTO escola
(nome,cnpj,abre,telefone)
VALUES
('Nossa Senhora',12345678932165,'8:00:00',32659881),
('João Gomes',22345678932165,'7:30:00',32659882),
('Interação',32345678932165,'7:00:00',32659883);

INSERT INTO aluno
(nome,matricula,data_matricula,email)
VALUES 
('Maria josé',01,'2020-01-03','mariajose@gmail.com'),
('Aldo Medeiros',02,'2020-01-05','aldomedeiros@hotmail.com'),
('Rodrigo Gomes',03,'2020-01-07','rodrigog@gmail.com');

INSERT INTO professor
(nome,telefone,cpf,salario,materia)
VALUES
('Patrica Carneiro',35795146,1234567812,3000,'Matemática'),
('Paulo Sergio',35795164,12345678923,3000,'Geografia'),
('Sergio Dantas',35795197,12345678934,2500,'Português');

SELECT * FROM escola;
SELECT * FROM aluno;
SELECT * FROM professor;