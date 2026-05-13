SELECT a.nome_anime, COUNT(p.id) AS total_personagens
FROM animes a
JOIN personagem p 
ON a.id = p.anime_id
GROUP BY a.nome_anime
HAVING COUNT(p.id) > 2;