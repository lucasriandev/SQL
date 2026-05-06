SELECT a.nome_anime, p.personagemAnime
FROM animes a
JOIN personagem p
ON a.id = p.anime_id;