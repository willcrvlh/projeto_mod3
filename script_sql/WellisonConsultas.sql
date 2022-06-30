-- qual a quantidade de aotes que tem a aparição superior que "50" vezes?

SELECT * FROM got.atores
WHERE Qtd_Aparicao > 50;

-- qual atores menos aparecem em tela?

SELECT * FROM got.atores
WHERE Qtd_Aparicao < 3;

-- quantos episódios obtivemos na temporada 1?

SELECT * FROM got.episodios
WHERE temporada = "1" -- RESULTADO: a consulta revela que obtivermos 10 episódios.

-- se somassemos todas as aparições de personagens, quantas vezes os personagens apareceram na tela?

SELECT SUM(Qtd_Aparicao) FROM got.atores; -- RESULTADO: 3497 aparições em tela em todas as temporadas.