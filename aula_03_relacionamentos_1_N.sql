-- =========================================================
-- FACULDADE - AULA 03: DDL e Relacionamento 1 para N (Um-para-Muitos)
-- CONCEITOS REVISADOS: RELACIONAMENTO DEPARTAMENTO X PROFESSOR
-- Autor: Trícia🌷
-- =========================================================

-- 1. Criando o ambiente físico (DDL)
CREATE DATABASE aula_03_universidade;
USE aula_03_universidade;

-- 2. Criando a tabela lado'1' (Departamento)
CREATE TABLE departamento (
-- Usando o NumeroDep como Chave Primária (PK) 
numerodep INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL, 
campus VARCHAR(50)
);

-- 3. Criando a tabela do lado "N" (Professor)
CREATE TABLE professor (
codigo INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(20),
email VARCHAR(100),

-- Transportando a Chave Primária de Departamento para cá como Chave Estrangeira (FK)
numero_dep_fk INT,
FOREIGN KEY (numero_dep_fk) REFERENCES departamento (numerodep)
);

-- 4. Inserindo dados de teste para ver a regra funcionando
-- Primeiro criamos os Departamentos (Lado 1)
INSERT INTO departamento (nome, campus) VALUES
('Tecnologia da Informação','Campus Central'),
('Administração e Negócios','Campus Sul');

-- Depois cadastramos os Professores vinculados aos seus respectivos Departamentos (Lado N)
INSERT INTO professor (nome, telefone, email, numero_dep_fk) VALUES
('Carlos Augusto','27 9999-9999','carlos@faculdade.com', 1), -- Vinculado a TI (ID 1)
('Fabiana Silva','28 8888-8888','fabiana@faculdade.com', 1), -- Também vinculado a TI (ID 1)
('Juliana Castro','22 7777-7777','juliana@faculdade.com', 2); -- Vinculado a Administração (ID 2)

-- 5. Consultando a listagem para validar quem trabalha onde
SELECT departamento.nome AS departamento, professor.nome AS professor, professor.email
FROM departamento
INNER JOIN professor ON departamento.numerodep = professor.numero_dep_fk
ORDER BY departamento.nome;