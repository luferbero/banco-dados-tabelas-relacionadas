CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255) NOT NULL,
    especificacao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (categoria,especificacao) VALUES ("Hidráulica", "produto p/ instalação hidráulica");
INSERT INTO tb_categorias (categoria,especificacao) VALUES ("Manuais", "Ferramentas manuais");
INSERT INTO tb_categorias (categoria,especificacao) VALUES ("Elétrios", "Ferramentas p/ instalação elétrica");
INSERT INTO tb_categorias (categoria,especificacao) VALUES ("Acabamento", "produtos p/ acabamento");
INSERT INTO tb_categorias (categoria,especificacao) VALUES ("Tinta", "Tintas variadas");

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	codigo BIGINT NOT NULL,
    marca VARCHAR(255) NOT NULL,
    valor DECIMAL NOT NULL,
    id_categ BIGINT NOT NULL,
    FOREIGN KEY (id_categ) REFERENCES tb_categorias(id)
);
ALTER TABLE tb_produtos MODIFY valor DECIMAL(6,2);

INSERT INTO tb_produtos (nome, codigo, marca, valor, id_categ) VALUES ("Martelo", 865, "melani", 23.99, 2);
INSERT INTO tb_produtos (nome, codigo, marca, valor, id_categ) VALUES ("PVC", 154, "pvcs", 12.20, 1);
INSERT INTO tb_produtos (nome, codigo, marca, valor, id_categ) VALUES ("Serrote", 754, "Serros", 98.90, 2);
INSERT INTO tb_produtos (nome, codigo, marca, valor, id_categ) VALUES ("Conduíte", 531, "Condus", 5.90, 3);
INSERT INTO tb_produtos (nome, codigo, marca, valor, id_categ) VALUES ("Cabo", 520, "Condus", 12.35, 3);
INSERT INTO tb_produtos (nome, codigo, marca, valor, id_categ) VALUES ("Piso", 332, "Pisax", 33.80, 4);
INSERT INTO tb_produtos (nome, codigo, marca, valor, id_categ) VALUES ("Revestimento", 383, "Pisax", 29.90, 4);
INSERT INTO tb_produtos (nome, codigo, marca, valor, id_categ) VALUES ("Tinta fosca", 662, "Melani", 102.90, 5);

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT p.*, tb_categorias.categoria, tb_categorias.especificacao FROM tb_produtos p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id;

SELECT p.*, tb_categorias.categoria, tb_categorias.especificacao FROM tb_produtos p INNER JOIN tb_categorias ON p.id_categ = tb_categorias.id WHERE tb_categorias.categoria = "Hidráulica";
