SELECT n.nome_anime, p.personagemAnime
FROM animes n
JOIN personagem p
ON n.id = p.anime_id
