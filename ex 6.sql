CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255) NOT NULL,
    especificacao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (categoria,especificacao) VALUES ("Java", "curso backend em java");
INSERT INTO tb_categorias (categoria,especificacao) VALUES ("PHP", "curso backend em php");
INSERT INTO tb_categorias (categoria,especificacao) VALUES ("Javascrip", "curso frontend em Javascript");
INSERT INTO tb_categorias (categoria,especificacao) VALUES ("HTML", "curso frontend em HTML");
INSERT INTO tb_categorias (categoria,especificacao) VALUES ("CSS", "curso frontend em CSS");

CREATE TABLE tb_cursos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	codigo BIGINT NOT NULL,
    instituicao VARCHAR(255) NOT NULL,
    valor DECIMAL NOT NULL,
    id_categ BIGINT NOT NULL,
    FOREIGN KEY (id_categ) REFERENCES tb_categorias(id)
);
ALTER TABLE tb_cursos MODIFY valor DECIMAL(6,2);

INSERT INTO tb_cursos (nome, codigo, instituicao, valor, id_categ) VALUES ("Dev Java Backend", 84965, "Generation", 0, 1);
INSERT INTO tb_cursos (nome, codigo, instituicao, valor, id_categ) VALUES ("Dev PHP Backend", 87545, "DIO", 0, 2);
INSERT INTO tb_cursos (nome, codigo, instituicao, valor, id_categ) VALUES ("Dev Javascrip Frontend", 14865, "Alura", 630.90, 3);
INSERT INTO tb_cursos (nome, codigo, instituicao, valor, id_categ) VALUES ("Dev HTML Frontend", 35123, "Alura", 330.90, 4);
INSERT INTO tb_cursos (nome, codigo, instituicao, valor, id_categ) VALUES ("Dev Java Backend", 96869, "DIO", 740.30, 1);
INSERT INTO tb_cursos (nome, codigo, instituicao, valor, id_categ) VALUES ("Dev PHP Backend", 89856, "Generation", 0, 2);
INSERT INTO tb_cursos (nome, codigo, instituicao, valor, id_categ) VALUES ("Dev CSS Frontend", 35342, "Alura", 370.90, 5);
INSERT INTO tb_cursos (nome, codigo, instituicao, valor, id_categ) VALUES ("Dev CSS Frontend", 11254, "DIO", 340.90, 5);

SELECT * FROM tb_cursos WHERE valor > 500;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT p.*, tb_categorias.categoria, tb_categorias.especificacao FROM tb_cursos p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id;

SELECT p.*, tb_categorias.categoria, tb_categorias.especificacao FROM tb_cursos p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id WHERE tb_categorias.categoria = "Java";
