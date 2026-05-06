SELECT animes.nome_anime, personagem.personagemAnime
FROM animes
JOIN personagem
ON animes.id = personagem.anime_id;