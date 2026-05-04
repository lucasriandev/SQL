SELECT n.nome_heroi, i.poder
FROM herois n
JOIN individualidades i ON i.heroi_id = n.id;