SELECT j.nome, p.nome_plataforma
FROM biblioteca_jogos j
JOIN plataformas p ON j.plataforma_id = p.id;