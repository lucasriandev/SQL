
CREATE TABLE herois (
    id SERIAL PRIMARY KEY,
    nome_heroi VARCHAR(20)
);

INSERT INTO herois (nome_heroi) 
VALUES ('All Might'), ('Endeavor');

CREATE TABLE individualidades(
    id SERIAL PRIMARY KEY,
    poder VARCHAR(50),
    heroi_id INT,
    CONSTRAINT fk_heroi FOREIGN KEY (heroi_id) REFERENCES herois(id)
);

INSERT INTO individualidades (poder, heroi_id) 
VALUES ('ONE FOR ALL', 1);

INSERT INTO individualidades (poder, heroi_id) 
VALUES ('CHAMAS', 2);