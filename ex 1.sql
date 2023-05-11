CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	classe VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL
);

INSERT INTO tb_classes (classe,tipo) VALUES ("Mago", "Magia");
INSERT INTO tb_classes (classe,tipo) VALUES ("feiticeiro", "Feitiço");
INSERT INTO tb_classes (classe,tipo) VALUES ("Arqueiro", "Ataque");
INSERT INTO tb_classes (classe,tipo) VALUES ("Guerreiro", "Ataque");
INSERT INTO tb_classes (classe,tipo) VALUES ("Espadachin", "Ataque");

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	ataque INT NOT NULL,
    defesa INT NOT NULL,
    vida INT NOT NULL,
    id_classe BIGINT NOT NULL,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES ("Jin U", 2500, 2500, 100, 1);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES ("Jonin", 2200, 2300, 95, 4);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES ("Don ne", 1800, 1500, 100, 3);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES ("Pic nam", 1500, 2000, 87, 2);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES ("Malik", 2300, 2300, 100, 1);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES ("Tek non", 1700, 1800, 90, 5);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES ("Jan Pu", 1900, 1500, 80, 3);
INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES ("Bi zun", 2000, 1800, 95, 5);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT p.*, tb_classes.classe, tb_classes.tipo FROM tb_personagens p INNER JOIN tb_classes ON p.id_classe = tb_classes.id;

SELECT p.*, tb_classes.classe, tb_classes.tipo FROM tb_personagens p INNER JOIN tb_classes ON p.id_classe = tb_classes.id WHERE tb_classes.id = 3;

