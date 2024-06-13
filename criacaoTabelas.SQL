-- Você é um arqueólogo contratado por um museu, para encontrar um lendário tesouro para a sua exposição anual. 
-- Existem várias pistas, relatos e investigações sobre diferentes tesouros espalhados pelo mundo. 
-- Sua missão é seguir as pistas corretamente, utilizando consultas SQL para interrogar o banco de dados e descobrir qual tesouro você precisa encontrar.

-- Dica 1)  Comece lendo todos os relatos com o nível mais alto de confiança (niveis de confiança variam de 1-5, sendo 5 o nível mais alto), pois eles dão inicio às investigações com mais facilidade.
-- Dica 2)  Somente investigações que estão em execução podem levar ao tesouro que deve ser encontrado.
-- Dica 3)  São necessárias duas informações para descobrir qual é o tesouro que você precisa encontrar.
-- Dica 4)  O tesouro deve ser equivalente ao tema da exposição proposto pelo museu.


-- CAMINHO:
-- 1- RELATO
-- 2- INVESTIGACAO com PISTA_INVESTIGACAO
-- 3.1- PISTA (LOCALIZACAO)
-- 3.2- PESQUISADOR (ESPECIALIDADE/"ORIGEM DO TESOURO")
-- 4.1- LOCALIZACAO (ONDE ESTÁ O TESOURO)
-- 4.2- MUSEU (TIPO EXPOSIÇÃO)
-- 5- TESOURO

CREATE TABLE IF NOT EXISTS LOCALIZACAO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT(100),
    Descricao TEXT(255),
    Regiao TEXT
);

CREATE TABLE IF NOT EXISTS TESOURO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT(100),
    Descricao TEXT(255),
    Tipo TEXT(50),
    Origem TEXT(100),
    LocalizacaoId INTEGER,

    FOREIGN KEY (LocalizacaoId) REFERENCES LOCALIZACAO(Id)
);

CREATE TABLE IF NOT EXISTS MUSEU (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT(100),
    TipoExposicao TEXT(100)
);

CREATE TABLE IF NOT EXISTS PESQUISADOR (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT(100),
    Especialidade TEXT(100),
    MuseuId INTEGER,

    FOREIGN KEY (MuseuId) REFERENCES MUSEU(Id)
);

CREATE TABLE IF NOT EXISTS PISTA (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Descricao TEXT(255),
    LocalizacaoId INTEGER,

    FOREIGN KEY (LocalizacaoId) REFERENCES LOCALIZACAO(Id)
);

CREATE TABLE IF NOT EXISTS PISTA_INVESTIGACAO (
    PistaId INTEGER,
    InvestigacaoId INTEGER,

    FOREIGN KEY (PistaId) REFERENCES PISTA(Id),
    FOREIGN KEY (InvestigacaoId) REFERENCES INVESTIGACAO(Id),
    PRIMARY KEY (PistaId, InvestigacaoId)
);

CREATE TABLE IF NOT EXISTS INVESTIGACAO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    PesquisadorId INTEGER,
    Status TEXT,
    
    FOREIGN KEY (PesquisadorId) REFERENCES PESQUISADOR(Id)
);

CREATE TABLE IF NOT EXISTS RELATO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Texto TEXT(255),
    Confianca INTEGER, 
    InvestigacaoId INTEGER,
    FOREIGN KEY (InvestigacaoId) REFERENCES INVESTIGACAO(Id)
);

