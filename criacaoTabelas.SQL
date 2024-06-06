CREATE TABLE IF NOT EXISTS TESOURO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT(100) NOT NULL,
    Descricao TEXT(255),
    Tipo TEXT(50) NOT NULL,
    Valor DECIMAL(18, 2) NOT NULL,
    Origem TEXT(100),
    LocalizacaoId INTEGER,
    FOREIGN KEY (LocalizacaoId) REFERENCES LOCALIZACAO(Id)
);

CREATE TABLE IF NOT EXISTS MUSEU (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT(100) NOT NULL,
    Localizacao TEXT(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS PESQUISADOR (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT(100) NOT NULL,
    Especialidade TEXT(100),
    MuseuId INTEGER,
    FOREIGN KEY (MuseuId) REFERENCES MUSEU(Id)
);

CREATE TABLE IF NOT EXISTS LOCALIZACAO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT(100) NOT NULL,
    Descricao TEXT(255),
    Lat DECIMAL(9, 6) NOT NULL,
    Lon DECIMAL(9, 6) NOT NULL
);

CREATE TABLE IF NOT EXISTS PISTA (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Descricao TEXT(255) NOT NULL,
    TesouroId INTEGER,
    FOREIGN KEY (TesouroId) REFERENCES TESOURO(Id)
);

CREATE TABLE IF NOT EXISTS RELATO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Texto TEXT(255) NOT NULL,
    TesouroId INTEGER,
    FOREIGN KEY (TesouroId) REFERENCES TESOURO(Id)
);

CREATE TABLE IF NOT EXISTS INVESTIGACAO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    PesquisadorId INTEGER,
    TesouroId INTEGER,
    Data DATE,
    Relato TEXT(255),
    FOREIGN KEY (PesquisadorId) REFERENCES PESQUISADOR(Id),
    FOREIGN KEY (TesouroId) REFERENCES TESOURO(Id)
);


INSERT INTO TESOURO (Nome, Descricao, Tipo, Valor, Origem, LocalizacaoId) VALUES 
('Tesouro dos Piratas', 'Baú cheio de moedas de ouro', 'Baú', 100000.00, 'Piratas', 1),
('Joia do Faraó', 'Colar de ouro com pedras preciosas', 'Joia', 500000.00, 'Egito Antigo', 2),
('Relíquia Sagrada', 'Artefato religioso antigo', 'Artefato', 750000.00, 'Civilização Desconhecida', 3),
('Estatueta de Bronze', 'Estatueta de uma deidade antiga', 'Estátua', 300000.00, 'Roma Antiga', 4),
('Máscara de Jade', 'Máscara cerimonial rara', 'Máscara', 250000.00, 'Civilização Maia', 5);

INSERT INTO MUSEU (Nome, Localizacao) VALUES 
('Museu de História Antiga', 'Cidade Velha'),
('Museu Arqueológico Nacional', 'Capitólio'),
('Museu das Relíquias', 'Centro Histórico');

INSERT INTO PESQUISADOR (Nome, Especialidade, MuseuId) VALUES 
('Dr. João Silva', 'Arqueologia', 1),
('Dra. Maria Santos', 'História Antiga', 2),
('Dr. Carlos Pereira', 'Antropologia', 3),
('Dra. Ana Costa', 'Paleontologia', 1),
('Dr. Pedro Souza', 'Epigrafia', 2);

INSERT INTO LOCALIZACAO (Nome, Descricao, Lat, Lon) VALUES 
('Ilha Perdida', 'Uma ilha remota e inexplorada', -15.793889, -47.882778),
('Tumba Real', 'Uma tumba secreta no deserto', 25.686614, 32.639635),
('Caverna Misteriosa', 'Uma caverna nas montanhas', 35.689487, 139.691711),
('Ruínas Antigas', 'Ruínas de uma civilização perdida', 29.979234, 31.134202),
('Templo Esquecido', 'Um templo coberto pela selva', -3.465305, -62.215881);

INSERT INTO PISTA (Descricao, TesouroId) VALUES 
('Procure onde o sol se põe', 1),
('Está escondido na sombra do grande obelisco', 2),
('A chave está na água', 3),
('O guardião de bronze aponta o caminho', 4),
('Entre os galhos do grande carvalho', 5);

INSERT INTO RELATO (Texto, TesouroId) VALUES 
('Dizem que os piratas esconderam seu tesouro na ilha onde ninguém ousa ir', 1),
('O faraó foi enterrado com suas joias mais valiosas em uma tumba que nunca foi descoberta', 2),
('O artefato sagrado foi protegido por gerações', 3),
('A estátua de bronze foi vista pela última vez em um antigo templo', 4),
('A máscara de jade era usada em rituais secretos', 5);

INSERT INTO INVESTIGACAO (PesquisadorId, TesouroId, Data, Relato) VALUES 
(1, 1, '2023-01-15', 'Encontramos uma pista indicando a localização do tesouro'),
(2, 2, '2023-02-20', 'Uma nova pista foi descoberta perto do obelisco'),
(3, 3, '2023-03-10', 'Relatos indicam que o artefato está próximo de uma fonte de água'),
(4, 4, '2023-04-05', 'A estátua foi encontrada perto do templo, mas ainda falta encontrar o tesouro'),
(5, 5, '2023-05-18', 'A máscara de jade foi vista pela última vez em uma cerimônia no templo');