SELECT a.nome_anime, p.personagemAnime
FROM animes a 
LEFT JOIN personagem p ON a.id = p.anime_id
LIMIT 1;