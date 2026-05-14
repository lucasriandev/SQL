SELECT N.nome_anime, COUNT(j.id) AS total
FROM animes N
JOIN personagem j ON N.id = j.anime_id
WHERE j.personagemAnime != 'SASUKE'
GROUP BY N.nome_anime
HAVING COUNT(j.id) > 1;


/*FROM / JOIN: Onde estão os dados?

WHERE: Quem eu ignoro agora? (Linhas)

GROUP BY: Como eu agrupo o que sobrou?

HAVING: Quais grupos eu ignoro? (Totais)

SELECT: O que eu mostro na tela?*/