-- =========================================================
-- FACULDADE - AULA 02: DDL e Relacionamento 1 para 1
-- CONCEITOS REVISADOS: RELACIONAMENTO ALUNO X FOTO (1:1)
-- Autor: Trícia🌷
-- =========================================================

-- 1. Criando ambiente físico (DDL)
CREATE DATABASE aula_02_universidade;
USE aula_02_universidade;

-- 2. Criando a tabela 'aluno' (Tabela base)
CREATE TABLE aluno (
-- Usando a matrícula como Chave Primária (PK) principal
matricula VARCHAR(20) PRIMARY KEY,
nome VARCHAR(100) NOT NULL, 
cidade VARCHAR(50)
);

-- 3. Criando a tabela Foto (Relacionamento 1 para 1)
CREATE TABLE foto (
-- Esta coluna é PK (única aqui) e FK (aponta para o Aluno) ao mesmo tempo!
matricula_aluno VARCHAR(20) PRIMARY KEY,
imagem BLOB, -- Tipo de dado para armazenar arquivos/fotos

-- Criando restrição de Chave Estrangeira lingando na tabela Aluno
FOREIGN KEY (matricula_aluno) REFERENCES aluno(matricula)
);

-- 4.Inserindo dados de teste para validar a estrutura
INSERT INTO aluno (matricula, nome, cidade) VALUES
('MAT46_TRICIA','Trícia Fiuza','Guarapari'),
('MAT46_LAUREN','Laurenice','Vila Velha');

-- (Simulando a inserção da foto usando uma função que carrega arquivos vazios)
INSERT INTO foto (matricula_aluno,imagem) VALUES
('MAT46_TRICIA', NULL), -- Foto da Trícia
('MAT46_LAUREN', NULL); -- Foto da Laurenice

-- 5. Consultando o Aluno junto com sua respectiva Foto (1 para 1)
SELECT aluno.nome, aluno.matricula, foto.imagem
FROM aluno
INNER JOIN foto ON aluno.matricula = foto.matricula_aluno;

SELECT * FROM FOTO;

ALTER TABLE foto MODIFY COLUMN imagem LONGBLOB;

