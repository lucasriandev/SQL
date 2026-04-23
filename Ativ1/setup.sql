-- Apaga as tabelas se elas já existirem para evitar erro de "já existe"
DROP TABLE IF EXISTS biblioteca_jogos;
DROP TABLE IF EXISTS plataformas;

-- 1. Criar a tabela de Plataformas primeiro (porque ela é a "mãe")
CREATE TABLE plataformas (
    id SERIAL PRIMARY KEY,
    nome_plataforma VARCHAR(50)
);

-- 2. Criar a tabela de Jogos com a coluna de ligação
CREATE TABLE biblioteca_jogos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(50),
    horas_jogadas INT,
    preco DECIMAL(5,2),
    plataforma_id INT,
    CONSTRAINT fk_plataforma FOREIGN KEY (plataforma_id) REFERENCES plataformas(id)
);

-- 3. Inserir os nomes das plataformas
INSERT INTO plataformas (nome_plataforma) VALUES 
('Steam'), 
('Epic Games'), 
('PlayStation 5');

-- 4. Inserir os jogos já com o ID da plataforma correto
INSERT INTO biblioteca_jogos (nome, genero, horas_jogadas, preco, plataforma_id) VALUES
('Hitman: Absolution', 'Stealth', 25, 40.00, 1),
('HITMAN World of Assassination', 'Stealth', 85, 200.00, 1),
('Fortnite', 'Battle Royale', 300, 0.00, 2),
('Tom Clancy''s Ghost Recon Breakpoint', 'Tiro tático', 60, 120.00, 3);