    CREATE TABLE treinadores (
        id SERIAL PRIMARY KEY,
        nome_treinador VARCHAR(20)
    );

    CREATE TABLE pokemons(
        id SERIAL PRIMARY KEY,
        nomePokemon VARCHAR(50),
        tipo VARCHAR(20),
        treinador_id INT,
        CONSTRAINT tt_treinador FOREIGN KEY (treinador_id) REFERENCES treinadores(id)
    );

    INSERT INTO treinadores(nome_treinador)
    VALUES ('ASH');

    INSERT INTO pokemons(nomePokemon, tipo, treinador_id)
    VALUES ('Pikachu', 'Eletrico', 1);

