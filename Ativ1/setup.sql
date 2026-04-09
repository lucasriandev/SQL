-- Criando a tabela
CREATE TABLE biblioteca_jogos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(50),
    horas_jogadas INT,
    preco DECIMAL(5,2)
);

-- Inserindo os dados para podermos testar as funções
INSERT INTO biblioteca_jogos (nome, genero, horas_jogadas, preco) VALUES
('Red Dead Redemption 1', 'Ação/Aventura', 120, 150.00),
('Resident Evil 7', 'Terror', 15, 80.00),
('Hitman: Absolution', 'Stealth', 25, 40.00),
('HITMAN World of Assassination', 'Stealth', 85, 200.00),
('Fortnite', 'Battle Royale', 300, 0.00),
('Tom Clancy''s Ghost Recon Breakpoint', 'Tiro tático', 60, 120.00);