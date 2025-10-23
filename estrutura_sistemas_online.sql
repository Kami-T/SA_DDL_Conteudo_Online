CREATE DATABASE dicionario_dados;

USE dicionario_dados;
CREATE TABLE usuarios (
usuario_id INT PRIMARY KEY,
nome VARCHAR (150) NOT NULL,
email VARCHAR (150) NOT NULL UNIQUE,
data_cadastro DATE NOT NULL
);

CREATE TABLE professores (
professor_id INT PRIMARY KEY,
nome VARCHAR (150) NOT NULL,
especialidade VARCHAR (100) NOT NULL,
salario_base DECIMAL (10, 2)
);

CREATE TABLE cursos (
curso_id INT PRIMARY KEY,
titulo VARCHAR (255) NOT NULL UNIQUE,
descricao TEXT,
carga_horaria INT,
data_lancamento DATE
);

CREATE TABLE aulas (
aula_id INT PRIMARY KEY,
titulo_aula VARCHAR (255) NOT NULL,
duracao_minutos INT NOT NULL,
tipo_conteudo VARCHAR (50)
);


ALTER TABLE professores ADD COLUMN email_corporativo VARCHAR (150);
ALTER TABLE cursos MODIFY COLUMN carga_horaria DECIMAL (5, 2);

DROP TABLE aulas;
CREATE TABLE aulas (
aula_id INT PRIMARY KEY,
titulo_aula VARCHAR (255) NOT NULL,
duracao_minutos INT NOT NULL,
tipo_conteudo VARCHAR (50)
);