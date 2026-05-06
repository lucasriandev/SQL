CREATE TABLE animes(
    id SERIAL PRIMARY KEY,
    nome_anime  VARCHAR(50)
);

CREATE TABLE personagem(
    id SERIAL PRIMARY KEY,
    personagemAnime VARCHAR(50),
    anime_id INT,
    CONSTRAINT fk_personagem FOREIGN KEY(anime_id) REFERENCES animes(id)
);


INSERT INTO animes(nome_anime)
VALUES ('BOKU NO HERO');

INSERT INTO personagem(personagemAnime, anime_id)
VALUES ('ALL MIGTH', 1);