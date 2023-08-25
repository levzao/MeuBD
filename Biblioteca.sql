CREATE DATABASE saraiva DEFAULT CHARSET utf8;

USE saraiva;

CREATE TABLE Biblioteca(
	ID_Livro INT NOT NULL AUTO_INCREMENT,
	Livro VARCHAR(60) NOT NULL,
	Autor VARCHAR (40) NOT NULL,
	Sexo_Autor ENUM('Masculino', 'Feminino') NOT NULL,
	Num_Paginas INT NOT NULL,
	Editora VARCHAR (25) NOT NULL,
    Valor_Capa DECIMAL(5.2) NOT NULL,
	Valor_Kindle DECIMAL(5.2) NOT NULL,
	Ano_Publicacao YEAR NOT NULL,
    PRIMARY KEY(ID_Livro)
)DEFAULT CHARSET utf8;


INSERT INTO Biblioteca(Livro, Autor, Sexo_Autor, Num_Paginas, Editora, Valor_Capa, Valor_Kindle, Ano_Publicacao)
VALUES
('Pai Rico, Pai Pobre', 'Robert T.Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, 2018),
('Mindset', 'Carol S.Dweck', 'Feminino', 312, 'Objetiva', 38.99, 14.95, 2017),
('Como fazer amigos e influenciar pessoas', 'Dale Carnegie', 'Masculino', 256, 'Sextate', 38.99, 33.24, 2019),
('A Cabana', 'Willian P.Young', 'Masculino', 240, 'Arqueiro', 35.99, 17.90, 2008),
('O Poder do Hábito', 'Charles Duhigg', 'Masculino', 408, 'Objetiva', 42.99, 29.90, 2012),
('Código Limpo', 'Robert C.Martin', 'Masculino ',425, 'Alta Books', 91.99, 87.30, 2009),
('Essencialismo', 'Greg McKoewn', 'Masculino', 272, 'Sextante', 53.58, 33.24, 2015),
('Me Poupe!', 'Nathalia Arcuti', 'Feminino', 176, 'Sextante', 32.86, 17.09, 2018),
('Comece pelo Porquê', 'Simon Sinek', 'Masculino', 256, 'Sextante', 50.58, 24.90, 2018),
('O Alquimista', 'Paulo Coelho', 'Masculino', 206,' Paralela', 24.70, 14.70, 2017);


-- 1° Selecionando todos os dados da tabela
SELECT * FROM Biblioteca;

-- 2° Selecionando nome do livro e nome da editora
SELECT Livro, Editora FROM Biblioteca;

-- 3° Selecionando nome do livro, editora e autores do sexo masculino
SELECT Livro, Editora, Sexo_Autor FROM Biblioteca
WHERE Sexo_Autor = 'Masculino';

-- 4° Selecionando nome do livro, número de páginas e autores do sexo feminino
SELECT Livro, Num_Paginas, Sexo_Autor FROM Biblioteca
WHERE Sexo_Autor = 'Feminino';


-- 5° Selecionando nome do autor, editora e publicação dos livros que tenham sido publicados a partir do ano 2017
SELECT Autor, Editora, Ano_Publicacao FROM Biblioteca
WHERE Ano_Publicacao >= 2017;

-- 6° Selecionando o nome dos autores do sexo masculino com livros publicados pela editora 'Sextante' ou pela editora 'Alta Books'
SELECT Autor, Sexo_Autor, Editora FROM Biblioteca
WHERE Sexo_Autor = 'Masculino' and Editora = 'Sextante' OR Editora ='Alta Books';

-- 7° Selecionando o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum
SELECT Livro, Autor, Num_Paginas, Editora, Ano_Publicacao, Valor_Capa FROM Biblioteca;

-- 8° Selecionando o nome do livro, autor, número de páginas e valor no Kindle
SELECT Livro, Autor, Num_Paginas, Valor_Kindle FROM Biblioteca;

-- 9° Selecionando o nome dos autores com livros publicados pela editora 'Sextante'
SELECT Autor, Editora FROM Biblioteca
WHERE Editora = 'Sextante';

-- 10° Selecionando o nome do livro, autores, valor com capa comum e valor no Kindle
SELECT Livro, Autor, Valor_Capa, Valor_Kindle FROM Biblioteca;


DROP DATABASE saraiva;