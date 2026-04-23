-- Criando a tabela de jogos
CREATE TABLE biblioteca_jogos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(50),
    horas_jogadas INT,
    preco DECIMAL(5,2),
    plataforma_id INT
);

-- Criando a tabela de plataformas
CREATE TABLE plataformas (
    id SERIAL PRIMARY KEY,
    nome_plataforma VARCHAR(50)
);

-- Criando a chave estrangeira (relacionamento)
ALTER TABLE biblioteca_jogos
ADD CONSTRAINT fk_plataforma
FOREIGN KEY (plataforma_id)
REFERENCES plataformas(id);

-- Inserindo plataformas
INSERT INTO plataformas (nome_plataforma) VALUES 
('Steam'), 
('Epic Games'), 
('PlayStation 5');

-- Inserindo jogos
INSERT INTO biblioteca_jogos (nome, genero, horas_jogadas, preco) VALUES
('Red Dead Redemption 1', 'Ação/Aventura', 120, 150.00),
('Resident Evil 7', 'Terror', 15, 80.00),
('Hitman: Absolution', 'Stealth', 25, 40.00),
('HITMAN World of Assassination', 'Stealth', 85, 200.00),
('Fortnite', 'Battle Royale', 300, 0.00),
('Tom Clancy''s Ghost Recon Breakpoint', 'Tiro tático', 60, 120.00);

-- Atualizando os jogos com suas plataformas
UPDATE biblioteca_jogos SET plataforma_id = 1 WHERE nome LIKE '%Hitman%'; -- Steam
UPDATE biblioteca_jogos SET plataforma_id = 2 WHERE nome = 'Fortnite'; -- Epic Games
UPDATE biblioteca_jogos SET plataforma_id = 3 WHERE nome LIKE '%Ghost Recon%'; -- PS5

-- Consulta com JOIN (pra testar)
SELECT j.nome, p.nome_plataforma
FROM biblioteca_jogos j
JOIN plataformas p ON j.plataforma_id = p.id;