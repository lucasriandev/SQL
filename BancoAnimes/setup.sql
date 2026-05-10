DROP TABLE IF EXISTS personagem;
DROP TABLE IF EXISTS animes;

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

INSERT INTO animes(nome_anime)
VALUES ('NARUTO');

INSERT INTO personagem(personagemAnime, anime_id)
VALUES ('MINATO', 2), ('NARUTO', 2), ('SUSUKE', 2)

INSERT INTO personagem(personagemAnime, anime_id)
VALUES ('ALL MIGTH', 1), ('ENDEAVOR', 1), ('ERASER', 1)

INSERT INTO personagem(personagemAnime, anime_id)
VALUES('DEKU', 1), ('BAKUGO', 1), ('TODOROKI', 1)
