--1 
SELECT 
	Nome, 
	Ano
FROM Filmes

--2 
SELECT
	Nome, 
	Ano, 
	Duracao
FROM Filmes
ORDER BY Ano ASC;

--3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

--4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Ano = 1997;

--5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Ano > 2000;

--6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7
ALTER TABLE Filmes 
ADD Quantidade INT; 

SELECT 
	Ano, 
	COUNT (*) AS Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

--8
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero

FROM Atores
WHERE Genero LIKE 'M'

--9
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero

FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT
	Filmes.Nome,
	Generos.Genero

FROM FilmesGenero
JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--11
SELECT
	Filmes.Nome,
	Generos.Genero

FROM FilmesGenero

JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

--12
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	Papel

FROM ElencoFilme
JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id