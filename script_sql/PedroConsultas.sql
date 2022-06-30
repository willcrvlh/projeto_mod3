#1-Quais são os 5 episódios mais votados e quantas pessoas participaram da votação?

SELECT 
    t1.titulo, t1.votos
FROM
    episodios AS t1
ORDER BY t1.votos DESC
LIMIT 5;

#2-Quem foi que escreveu a maior quantidade de episodios na serie e qual foi a temporada que mais teve episodios escritos por ele?
SELECT 
    COUNT(*) AS Quantidade, t1.roterista_1 AS Roteirista
FROM
    episodios AS t1
GROUP BY t1.roterista_1
UNION SELECT 
    COUNT(*) AS Quantidade, t2.roterista_2 AS Roteirista
FROM
    episodios AS t2
GROUP BY t2.roterista_2
ORDER BY 1 DESC
LIMIT 1;

#2.1-Temporada com mais episódios escritos por David Benioff
SELECT 
    COUNT(*) AS Quantidade_episodios, t1.temporada
FROM
    episodios AS t1
WHERE
    t1.roterista_1 = 'David Benioff'
        OR t1.roterista_2 = 'David Benioff'
GROUP BY t1.temporada
ORDER BY 1 DESC
LIMIT 1;