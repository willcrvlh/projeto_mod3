-- qual a quantidade de aotes que tem a aparição superior que "50" vezes?

SELECT * FROM got.atores
WHERE Qtd_Aparicao > 50;

-- qual atores menos aparecem em tela?

SELECT * FROM got.atores
WHERE Qtd_Aparicao < 3;

