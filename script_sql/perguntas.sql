SELECT * FROM got.episodios;

/*Qual episodio teve o maior indice de audencia nos EUA*/
SELECT
*
FROM episodios
WHERE audiencia_USA = (SELECT min(audiencia_USA) FROM episodios);

/*Qual foi o episodio com o menor indice de audiencia nos EUA*/
SELECT
*
FROM episodios
WHERE audiencia_USA = (SELECT max(audiencia_USA) FROM episodios);

/**/