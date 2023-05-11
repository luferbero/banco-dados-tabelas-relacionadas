CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	borda VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (borda,tipo) VALUES ("Catupiry", "Salgada");
INSERT INTO tb_categorias (borda,tipo) VALUES ("Cheddar", "Salgada");
INSERT INTO tb_categorias (borda,tipo) VALUES ("Chocolate", "Doce");
INSERT INTO tb_categorias (borda,tipo) VALUES ("Leite Ninho", "Doce");
INSERT INTO tb_categorias (borda,tipo) VALUES ("Doce de Leite", "Doce");

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	tamanho VARCHAR(255) NOT NULL,
    recheio VARCHAR(255) NOT NULL,
    valor DECIMAL NOT NULL,
    id_categ BIGINT NOT NULL,
    FOREIGN KEY (id_categ) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, tamanho, recheio, valor, id_categ) VALUES ("Frango com Catupiry", "pequena", "frango e catupiry", 32, 1);
INSERT INTO tb_pizzas (nome, tamanho, recheio, valor, id_categ) VALUES ("Baiana", "Grande", "calabresa,ovo e cebola", 42, 2);
INSERT INTO tb_pizzas (nome, tamanho, recheio, valor, id_categ) VALUES ("Portuguesa", "Grande", "mussarela, ervilha, presunto e palmito", 42, 1);
INSERT INTO tb_pizzas (nome, tamanho, recheio, valor, id_categ) VALUES ("Brigadeiro", "Grande", "chocolate e granulado", 50, 3);
INSERT INTO tb_pizzas (nome, tamanho, recheio, valor, id_categ) VALUES ("Doce de Leite", "Grande", "doce de leite e chocolate", 50, 5);
INSERT INTO tb_pizzas (nome, tamanho, recheio, valor, id_categ) VALUES ("Morango", "Grande", "chocolate e morango", 54, 3);
INSERT INTO tb_pizzas (nome, tamanho, recheio, valor, id_categ) VALUES ("Atum", "Pequena", "atum e cebola", 32, 1);
INSERT INTO tb_pizzas (nome, tamanho, recheio, valor, id_categ) VALUES ("Beijinho", "Grande", "beijinho e chocolate", 50, 4);

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT p.*, tb_categorias.borda, tb_categorias.tipo FROM tb_pizzas p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id;

SELECT p.*, tb_categorias.borda, tb_categorias.tipo FROM tb_pizzas p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id WHERE tb_categorias.tipo = "Doce";

