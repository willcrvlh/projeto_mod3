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

