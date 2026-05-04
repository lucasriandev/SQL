SELECT 
    h.nome_heroi, 
    i.poder
FROM herois h
JOIN individualidades i ON i.heroi_id = h.id;