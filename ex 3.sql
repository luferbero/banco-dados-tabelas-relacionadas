CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	produto VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (produto,marca) VALUES ("Cosmético", "Bioage");
INSERT INTO tb_categorias (produto,marca) VALUES ("Óleo essencial", "Bioage");
INSERT INTO tb_categorias (produto,marca) VALUES ("luva", "Natura");
INSERT INTO tb_categorias (produto,marca) VALUES ("Cosmético", "Natura");
INSERT INTO tb_categorias (produto,marca) VALUES ("Vela", "Avon");

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
    durabilidade VARCHAR(255) NOT NULL,
    valor DECIMAL NOT NULL,
    id_categ BIGINT NOT NULL,
    FOREIGN KEY (id_categ) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, descricao, durabilidade, valor, id_categ) VALUES ("Beauty hand", "Creme p/ mãos", "2 meses", 46, 1);
INSERT INTO tb_produtos (nome, descricao, durabilidade, valor, id_categ) VALUES ("Princess", "Hidratante facial", "1,5 meses", 89, 1);
INSERT INTO tb_produtos (nome, descricao, durabilidade, valor, id_categ) VALUES ("Lavanda", "Óleo relaxante", "3 meses", 32, 2);
INSERT INTO tb_produtos (nome, descricao, durabilidade, valor, id_categ) VALUES ("Alecrim", "Óleo p/ concentração", "3 meses", 32, 2);
INSERT INTO tb_produtos (nome, descricao, durabilidade, valor, id_categ) VALUES ("Purf", "Luva descartável", "Variável", 59, 3);
INSERT INTO tb_produtos (nome, descricao, durabilidade, valor, id_categ) VALUES ("Purf Slow", "Luva Especial", "Variável", 120, 3);
INSERT INTO tb_produtos (nome, descricao, durabilidade, valor, id_categ) VALUES ("Pink Blush", "Hidratante", "2 meses", 78, 4);
INSERT INTO tb_produtos (nome, descricao, durabilidade, valor, id_categ) VALUES ("Aroma", "Vela aromática", "15 horas", 34, 5);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT p.*, tb_categorias.produto, tb_categorias.marca FROM tb_produtos p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id;

SELECT p.*, tb_categorias.produto, tb_categorias.marca FROM tb_produtos p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id WHERE tb_categorias.produto = "Cosmético";
