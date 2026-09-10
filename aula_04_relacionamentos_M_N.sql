-- =========================================================
-- FACULDADE - AULA 04: DDL e Relacionamento M para N (Muitos-para-Muitos)
-- CONCEITOS REVISADOS: TABELA DE JUNÇÃO (TURMA) COM ATRIBUTOS PRÓPRIOS
-- Autor: Trícia🌷
-- =========================================================

-- 1. Criando e ativando o ambiente físico
CREATE DATABASE aula_04_matriculas;
USE aula_04_matriculas;

-- 2. Criando a tabela Aluno
CREATE TABLE aluno (
matricula VARCHAR(20) PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
endereCo VARCHAR(150), 
cidade VARCHAR(50)
);

-- 3. Criando a tabela Disciplina
CREATE TABLE disciplina (
codigo_disciplina VARCHAR(20) PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
creditos INT
);

-- 4. Criando a tabela Ponte/Junção: Turma (O segredo do N:M)
CREATE TABLE turma (
-- Chaves extrageiras que apontam para os dois lados
matricula_aluno VARCHAR(20),
codigo_disciplina_fk VARCHAR(20),

-- Atributos próprios da junção

sala VARCHAR(10),
horario VARCHAR(20),

-- Criando vínculo das duas Chaves Estrangeiras (FK)
FOREIGN KEY (matricula_aluno) REFERENCES aluno(matricula),
FOREIGN KEY (codigo_disciplina_fk) REFERENCES disciplina(codigo_disciplina),

-- Chave primária Composta (A união das duas chaves garante que o mesmo aluno não se matriculeduas vezes na mesma turma!)
PRIMARY KEY (matricula_aluno, codigo_disciplina_fk)
);

-- Inserindo dados para testar o casamento M:N
INSERT INTO aluno (matricula, nome, cidade) VALUES
('MAT_TRICIA', 'Tricia Fiuza','Guarapari'),
('MAT_LUCAS', 'Lucas Silva','Vila Velha');

INSERT INTO disciplina (codigo_disciplina, nome, creditos) VALUES
('BD_SQL','Banco de Dados SQL',4),
('IA_INTRO','Introducao à Inteligência Artificial', 6);

-- Matriculando os alunos nas turmas (A tabela ponte em ação!)
INSERT INTO turma (matricula_aluno, codigo_disciplina_fk, sala, horario) VALUES
('MAT_TRICIA','BD_SQL','Sala 302','Segunda 19h'), -- Trícia em Banco de Dados
('MAT_TRICIA','IA_INTRO','Lab 05','Quarta 21h'), -- Trícia também em IA!
('MAT_LUCAS','BD_SQL','Sala 302','Segunda 19h'); -- Lucas em Banco de Dados

-- 6. Consulta completa juntando as três tabelas ao mesmo tempo!
SELECT aluno.nome AS Aluno, disciplina.nome AS Disciplina, turma.sala, turma.horario
FROM turma
INNER JOIN aluno ON turma.matricula_aluno = aluno.matricula
INNER JOIN disciplina ON turma.codigo_disciplina_fk = disciplina.codigo_disciplina;
