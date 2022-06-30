
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
