-- =========================================================
-- FACULDADE - AULA 01: Tipos de Dados e Chave Primária
-- CONCEITOS REVISADOS: CHAR, VARCHAR INT, DER, e PK
-- Autor: Trícia🌷
-- =========================================================

-- 1. Criando o ambiente de estudos
CREATE DATABASE aula_01_modelagem;
USE aula_01_modelagem;

-- 2. Criando a tabela 'aluno' baseada no exemplo do diagrama ER
CREATE TABLE aluno (
id_aluno INT PRIMARY KEY AUTO_INCREMENT, -- Chave primária única / Número com auto incremento
nome VARCHAR(100) NOT NULL, -- Texto variável / Campo não vazio
idade INT NOT NULL, -- Número inteiro 
endereco VARCHAR(150),
cidade VARCHAR(50)
);

-- 3. Inserindo registros (linhas)
INSERT INTO aluno (nome, idade, endereco, cidade) VALUES
('Trícia', 46, 'Rua Maria Silva, 40','Guarapari'),
('Laurenice', 73,'Ladeira José, 76','Guarapari');

-- 4.Consultando os dados para ver a tabela pronta
SELECT * FROM aluno;


