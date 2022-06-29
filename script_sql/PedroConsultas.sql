SELECT * FROM got.atores;

#1-Quais são os 5 episódios mais votados e quantas pessoas participaram da votação?

SELECT 
    t1.Titulo, t1.Votos
FROM
    episodios AS t1
ORDER BY t1.Votos DESC
LIMIT 5;

#2-Quem foi que escreveu a maior quantidade de episodios na serie e qual foi a temporada que mais teve episodios escritos por ele?
SELECT 
    COUNT(*) AS Quantidade, t1.Writer_1 AS Escritor
FROM
    episodios AS t1
GROUP BY t1.Writer_1 
UNION SELECT 
    COUNT(*) AS Quantidade, t2.Writer_2 AS Escritor
FROM
    episodios AS t2
GROUP BY t2.Writer_2
ORDER BY 1 DESC
LIMIT 1;

#2.1-Temporada com mais episódios escritos por David Benioff
SELECT 
    COUNT(*) AS Quantidade_episodios, t1.Temporada
FROM
    episodios AS t1
WHERE
    t1.Writer_1 = 'David Benioff'
        OR t1.Writer_2 = 'David Benioff'
GROUP BY t1.Temporada
ORDER BY 1 DESC
LIMIT 1;