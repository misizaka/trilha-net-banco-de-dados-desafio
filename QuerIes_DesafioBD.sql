use Filmes

--1 - Buscar o nome e ano dos filmes
SELECT 
Nome, Ano
FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
Nome, Ano
FROM Filmes
ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

--4 - Buscar os filmes lan�ados em 1997
SELECT 
Nome, Ano, Duracao
FROM Filmes
WHERE Ano = '1997'

--5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT 
Nome, Ano, Duracao
FROM Filmes
WHERE Ano > '2000'

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > '100' and Duracao < '150'
ORDER BY Duracao

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
--Tem um erro no enunciado, n�o tem como ordernar pela dura��o se ela n�o est� no select e pelo resultado do print o order by foi feito baseado na quantidade 
SELECT 
Ano,
Count (*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
--Outro enunciado d�bio, se for para ficar igual o print � Select *; 
SELECT
*
FROM Atores
WHERE Genero = 'M'
--Se for para seguir o que foi pedido na parte escrita n�o inclui o Id e o Select seria:
SELECT
PrimeiroNome,UltimoNome,Genero
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
--Outro enunciado d�bio, se for para ficar igual o print � Select *; 
SELECT
*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--Se for para seguir o que foi pedido na parte escrita n�o inclui o Id e o Select seria:
SELECT
PrimeiroNome,UltimoNome,Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o g�nero
SELECT 
F.Nome, G.Genero
FROM FILMES F
INNER JOIN FilmesGenero FG ON F.ID = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT 
F.Nome, G.Genero
FROM FILMES F
INNER JOIN FilmesGenero FG ON F.ID = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
EF.Papel
FROM FILMES F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id

