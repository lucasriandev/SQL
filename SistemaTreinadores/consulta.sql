SELECT treinadores.nome_treinador, pokemons.nomePokemon
FROM treinadores
JOIN pokemons 
ON treinadores.id = pokemons.treinador_id;