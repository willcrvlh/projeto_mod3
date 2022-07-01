
-- 1. QUEM FOI O PERSONAGEM PRINCIPAL (OU SEJA QUE APARACEU NA TELA) DE CADA TEMPORADA?

SELECT episodios.Star_1 as PersonagemPrincipal, COUNT(episodios.Star_1) as Episodios, episodios.Temporada
FROM episodios
GROUP BY episodios.Temporada, episodios.Star_1;

-- 2. QUAL REGIÃO POSSUI A MAIOR QUANTIDADE DE CASAS?

SELECT casas.Regiao, COUNT(casas.Casas) as Casas
FROM casas
WHERE casas.Regiao = casas.Regiao
GROUP BY casas.Regiao
LIMIT 10;

Use got;
SELECT 
    personagens.ultimo_ano, COUNT(personagens.ultimo_ano)
FROM
    personagens
WHERE
    personagens.ultimo_Ano = personagens.ultimo_Ano
GROUP BY personagens.ultimo_ano;




SELECT 
    personagens.primeiro_ano, COUNT(personagens.primeiro_ano)
FROM
    personagens
WHERE
    personagens.primeiro_ano = personagens.primeiro_ano
GROUP BY personagens.primeiro_ano;


select episodios.Temporada , episodios.Estreia
from episodios
where episodios.Temporada = episodios.Temporada
group by episodios.Temporada; 

SELECT 
    nome_Personagem,
    ator,
    quantidade_Aparicao,
    CASE
        WHEN quantidade_Aparicao > 60 THEN 'Principais'
        WHEN quantidade_Aparicao > 40 THEN 'Coadjuvante'
        when quantidade_Aparicao > 10  then 'Secundario'
        WHEN quantidade_Aparicao <= 10 THEN 'Figurante'
    END AS melhor_ator
FROM
    personagens;
SELECT 
    Nome_Personagem,
    Ator    
FROM
    personagens
WHERE 

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

-- qual a quantidade de aotes que tem a aparição superior que "50" vezes?

SELECT * FROM got.atores
WHERE quantidade_aparicao > 50;

-- qual atores menos aparecem em tela?

SELECT * FROM got.atores
WHERE quantidade_aparicao < 3;

-- quantos episódios obtivemos na temporada 1?

SELECT * FROM got.episodios
WHERE temporada = "1" -- RESULTADO: a consulta revela que obtivermos 10 episódios.

-- se somassemos todas as aparições de personagens, quantas vezes os personagens apareceram na tela?

SELECT SUM(quantidade_aparicao) FROM got.atores; -- RESULTADO: 3497 aparições em tela em todas as temporadas.

-- qual episodio teve o maior indice de audencia nos EUA?
SELECT
*
FROM episodios
WHERE audiencia_USA = (SELECT max(audiencia_USA) FROM episodios);

--qual episodio teve o menor indice de audiencia nos EUA?
SELECT
*
FROM episodios
WHERE audiencia_USA = (SELECT min(audiencia_USA) FROM episodios);
