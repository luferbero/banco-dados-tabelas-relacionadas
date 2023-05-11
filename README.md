# banco-dados-tabelas-relacionadas
## Atividades de Banco de Dados Relacional do Bootcamp da Generation Brasil 

ATIVIDADE 01

Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
- 1- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
- 2- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
- 3- Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
- 4- Insira 5 registros na tabela tb_classes.
- 5-Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
- 6-Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
- 7- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
- Resposta: https://github.com/luferbero/banco-dados-tabelas-relacionadas/blob/main/ex%201.sql

ATIVIDADE 02

Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.
- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
- 2- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
- 4- Insira 5 registros na tabela tb_categorias.
- 5- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
- 6- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
- 7- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
- 8- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
- Resposta: https://github.com/luferbero/banco-dados-tabelas-relacionadas/blob/main/ex%202.sql

ATIVIDADE 03

Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.
- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
- 2- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
- 4- Insira 5 registros na tabela tb_categorias.
- 5- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
- 6- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
- 7- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
- Resposta: https://github.com/luferbero/banco-dados-tabelas-relacionadas/blob/main/ex%203.sql

ATIVIDADE 04

Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_dos_vegetais. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.
- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
- 2- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
- 4- Insira 5 registros na tabela tb_categorias.
- 5- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
- 6- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
- 7- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
- Resposta: https://github.com/luferbero/banco-dados-tabelas-relacionadas/blob/main/ex%204.sql

ATIVIDADE 05

Crie um banco de dados para um serviço de uma loja de Material de Construção. 
O nome do Banco de dados deverá ter o seguinte nome db_construindo_vidas. O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.
- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
- 2- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
- 4- Insira 5 registros na tabela tb_categorias.
- 5- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
- 6- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.
- 7- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica).
- Resposta: https://github.com/luferbero/banco-dados-tabelas-relacionadas/blob/main/ex%205.sql

ATIVIDADE 06

Crie um banco de dados para uma plataforma de Cursos Online (EAD). O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.
- 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
- 2- Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.
- 4- Insira 5 registros na tabela tb_categorias.
- 5- Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
- 6- Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
- 7- Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
- 8- Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
- 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
- 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
- Resposta: https://github.com/luferbero/banco-dados-tabelas-relacionadas/blob/main/ex%206.sql
