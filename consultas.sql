#Qual é o episódio mais votado e quantas pessoas participaram da votação?
SELECT t1.Titulo, t1.Votos
FROM episodios as t1
WHERE t1.Votos = (SELECT MAX(t2.Votos) FROM episodios as t2);
#Quais são os 10 episódios mais votados e quantas pessoas participaram da votação?
SELECT t1.Titulo, t1.Votos
FROM episodios as t1
ORDER BY t1.Votos DESC LIMIT 10;
#Quem foi que escreveu a maior quantidade de episodios na serie e qual foi a temporada que mais teve episodios escritos por ele?
SELECT COUNT(*) as Quantidade, t1.Writer_1 as Escritor
FROM episodios as t1
GROUP BY t1.Writer_1
UNION 
SELECT COUNT(*) as Quantidade, t2.Writer_2 as Escritor
FROM episodios as t2
GROUP BY t2.Writer_2
ORDER BY 1 DESC LIMIT 1;
#Temporada com mais episódios escritos por David Benioff
SELECT COUNT(*) as Quantidade_episodios, t1.Temporada
FROM episodios as t1
WHERE t1.Writer_1 = 'David Benioff' 
OR t1.Writer_2 = 'David Benioff' 
GROUP BY t1.Temporada
ORDER BY 1 DESC LIMIT 1;