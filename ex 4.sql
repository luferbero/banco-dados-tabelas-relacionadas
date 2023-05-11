CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	produto VARCHAR(255) NOT NULL,
    especificacao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (produto,especificacao) VALUES ("Ave", "sem osso");
INSERT INTO tb_categorias (produto,especificacao) VALUES ("Ave", "com osso");
INSERT INTO tb_categorias (produto,especificacao) VALUES ("Ave", "sem pele sem osso");
INSERT INTO tb_categorias (produto,especificacao) VALUES ("Boi", "de primeira");
INSERT INTO tb_categorias (produto,especificacao) VALUES ("Boi", "de segunda");

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	kilo DECIMAL NOT NULL,
    marca VARCHAR(255) NOT NULL,
    valor DECIMAL NOT NULL,
    id_categ BIGINT NOT NULL,
    FOREIGN KEY (id_categ) REFERENCES tb_categorias(id)
);
ALTER TABLE tb_produtos MODIFY kilo DECIMAL(6,3);
ALTER TABLE tb_produtos MODIFY valor DECIMAL(6,3);

INSERT INTO tb_produtos (nome, kilo, marca, valor, id_categ) VALUES ("Peito", 1, "sadia", 18.90, 1);
INSERT INTO tb_produtos (nome, kilo, marca, valor, id_categ) VALUES ("Sobre-coxa", 2, "sadia", 17.90, 3);
INSERT INTO tb_produtos (nome, kilo, marca, valor, id_categ) VALUES ("Asinha", 1.500, "sadia", 19.90, 2);
INSERT INTO tb_produtos (nome, kilo, marca, valor, id_categ) VALUES ("Coxão mole", 2, "sadia", 43, 5);
INSERT INTO tb_produtos (nome, kilo, marca, valor, id_categ) VALUES ("Maminha", 3, "friboi", 53, 4);
INSERT INTO tb_produtos (nome, kilo, marca, valor, id_categ) VALUES ("Picanha", 3, "fibroi", 64, 4);
INSERT INTO tb_produtos (nome, kilo, marca, valor, id_categ) VALUES ("Coxinha da asa", 1, "sadia", 19, 2);
INSERT INTO tb_produtos (nome, kilo, marca, valor, id_categ) VALUES ("Alcatra", 2.500, "fibroi", 39, 5);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT p.*, tb_categorias.produto, tb_categorias.especificacao FROM tb_produtos p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id;

SELECT p.*, tb_categorias.produto, tb_categorias.especificacao FROM tb_produtos p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id WHERE tb_categorias.produto = "Ave";
