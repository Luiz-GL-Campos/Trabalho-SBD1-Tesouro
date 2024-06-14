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

CREATE TABLE IF NOT EXISTS INVESTIGACAO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    PesquisadorId INTEGER,
    Status TEXT,
    
    FOREIGN KEY (PesquisadorId) REFERENCES PESQUISADOR(Id)
);

CREATE TABLE IF NOT EXISTS PISTA_INVESTIGACAO (
    PistaId INTEGER,
    InvestigacaoId INTEGER,

    FOREIGN KEY (PistaId) REFERENCES PISTA(Id),
    FOREIGN KEY (InvestigacaoId) REFERENCES INVESTIGACAO(Id),
    PRIMARY KEY (PistaId, InvestigacaoId)
);

CREATE TABLE IF NOT EXISTS RELATO (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Texto TEXT(255),
    Confianca INTEGER, 
    InvestigacaoId INTEGER,
    FOREIGN KEY (InvestigacaoId) REFERENCES INVESTIGACAO(Id)
);

INSERT INTO LOCALIZACAO (Nome, Descricao, Regiao) VALUES
('Ilha Perdida', 'Uma ilha remota e inexplorada', 'Triângulo das Bermudas'),
('Tumba Real', 'Uma tumba secreta no deserto', 'Cairo'),
('Caverna Misteriosa', 'Uma caverna nas montanhas', 'Desconhecida'),
('Ruínas Antigas', 'Ruínas de uma civilização perdida', 'Roma'),
('Templo Esquecido', 'Um templo coberto pela selva', 'México'),
('Ilha do Tesouro', 'Uma ilha cheia de lendas', 'Islândia'),
('Caverna Oculta', 'Uma caverna escondida entre as montanhas', 'México'),
('Templo Abandonado', 'Um templo antigo e misterioso', ''),
('Fortaleza Perdida', 'Ruínas de uma fortaleza antiga', 'Japão'), --**
('Praia Secreta', 'Uma praia isolada e inexplorada', 'Caribe'),
('Caverna', 'Ilha remota com um vulcão ativo', 'Japão'),
('Fundo do Lago', 'Lago encontrado após uma escalada dificil em uma montanha', 'Japão'),
('Caverna Escondida', 'Uma caverna secreta com antigos hieróglifos', 'Montanhas Rochosas'),
('Deserto Misterioso', 'Uma vasta área deserta com muitas lendas', 'Sahara'),
('Floresta Encantada', 'Uma floresta densa onde dizem haver tesouros escondidos', 'Amazônia'),
('Ruínas Antigas', 'Ruínas de uma civilização perdida', 'Peru'),
('Montanha Proibida', 'Uma montanha perigosa e difícil de escalar', 'Himalaia'),
('Lago Profundo', 'Um lago profundo com segredos submersos', 'Sibéria'),
('Cidade Submersa', 'Ruínas de uma cidade antiga submersa', 'Atlântico Norte'),
('Templo Esquecido', 'Um templo escondido na selva', 'Sudeste Asiático'),
('Fortaleza Abandonada', 'Uma antiga fortaleza em ruínas', 'Europa Central'),
('Cânion Secreto', 'Um cânion remoto com difícil acesso', 'Arizona'),
('Fortaleza Antiga', 'Uma antiga fortaleza cercada por mistérios', 'Ásia'),
('Templo Submerso', 'Um templo que está debaixo da água', 'Oceano Pacífico'),
('Montanha Mística', 'Uma montanha conhecida por suas lendas', 'Himalaia');

INSERT INTO MUSEU (Nome, TipoExposicao) VALUES
('Museu de História Antiga', 'História Antiga'),
('Museu Arqueológico Nacional', 'Arqueologia'),
('Museu das Relíquias', 'Relíquias'),
('Museu das Civilizações', 'Civilizações'),
('Museu de História Contemporânea', 'História Contemporânea'),
('Museu de História Oriental', 'Regime Feudal dos Xoguns no Japão'), --id: 6
('Museu de Arte Moderna', 'Arte Moderna'),
('Museu de História Natural', 'História Natural'),
('Museu de Ciências', 'Ciências'),
('Museu de Arte Antiga', 'Arte Antiga'),
('Museu de Tecnologia', 'Tecnologia'),
('Museu da História Asiática', 'História da Ásia'),
('Museu de Civilizações Perdidas', 'Civilizações Perdidas');

INSERT INTO PESQUISADOR (Nome, Especialidade, MuseuId) VALUES
('Dr. João Silva', 'Arqueologia', 1),
('Dra. Maria Santos', 'História Antiga', 2),
('Dr. Carlos Pereira', 'Antropologia', 3),
('Dra. Ana Costa', 'Paleontologia', 4),
('Dr. Pedro Souza', 'Epigrafia', 5),
('Dr. Fernanda Lima', 'Egiptologia', 1),
('Dr. Ricardo Alves', 'Era Medieval', 7),
('Dr. Juliana Nunes', 'Arqueologia Subaquática', 3),
('Dra. Beatriz Costa', 'Etnologia', 4),
('Dr. Henrique Souza', 'Japão Feudal', 6), --**
('Dra. Maria Oliveira', 'História Antiga', 5),
('Dr. Pedro Santos', 'Paleontologia', 3),
('Dr. Lucas Fernandes', 'Antropologia', 5),
('Dra. Beatriz Almeida', 'Arqueologia Subaquática', 6),
('Dra. Fernanda Ramos', 'Etnografia', 8),
('Dr. Rafael Souza', 'Conservação e Restauro', 9),
('Dra. Juliana Marques', 'Museologia', 10),
('Dr. Henrique Lima', 'História Medieval', 11),
('Dra. Camila Rocha', 'Geologia', 9),
('Dr. André Gomes', 'Egiptologia', 7),
('Dra. Isabel Ferreira', 'Numismática', 8),
('Dr. Bruno Melo', 'História da Arte', 11),
('Dra. Laura Ribeiro', 'Arqueobotânica', 1),
('Dr. Gustavo Alves', 'Patrimônio Cultural', 2),
('Dr. Aki Tanaka', 'História Asiática', 12),
('Dra. Keiko Yamamoto', 'Arqueologia', 13),
('Dr. Satoshi Nakamura', 'Civilizações Antigas', 14);

INSERT INTO TESOURO (Nome, Descricao, Tipo, Origem, LocalizacaoId) VALUES
('Máscara de Jade', 'Máscara cerimonial rara', 'Máscara', 'Civilização Maia', 5),
('Herança do Samurai', 'Espada e armadura de um grande guerreiro', 'Arma','Japão Feudal', 9), --**
('Joia do Faraó', 'Colar de ouro com pedras preciosas', 'Joia', 'Egito Antigo', 2),
('Tesouro Maia', 'Artefatos sagrados e pedras preciosas', 'Artefato', 'Civilização Maia', 7),
('Tesouro dos Vikings', 'Baú com joias e moedas antigas', 'Baú', 'Vikings', 6),
('Tesouro dos Piratas', 'Baú cheio de moedas de ouro', 'Baú', 'Piratas', 1),
('Estatueta de Bronze', 'Estatueta de uma deidade antiga', 'Estátua', 'Roma Antiga', 4),
('Tesouro dos Templários', 'Relíquias e ouro dos Templários', 'Relíquia','Templários', 8),
('Tesouro dos Incas', 'Ouro e artefatos cerimoniais', 'Artefato', 'Incas', 10),
('Relíquia Sagrada', 'Artefato religioso antigo', 'Artefato', 'Civilização Desconhecida', 3),
('Estátua de Ouro', 'Estátua de um antigo deus', 'Estátua', 'Civilização Inca', 3),
('Vaso Grego', 'Vaso de cerâmica com pinturas', 'Artefato', 'Grécia Antiga', 7),
('Moeda de Prata', 'Moeda rara de prata', 'Moeda', 'Império Romano', 12),
('Cetro Real', 'Cetro usado por antigos reis', 'Artefato', 'Egito Antigo', 8),
('Colar de Pérolas', 'Colar de pérolas com detalhes em ouro', 'Joia', 'Dinastia Ming', 15),
('Escultura de Mármore', 'Escultura representando um guerreiro', 'Escultura', 'Império Grego', 4),
('Manuscrito Iluminado', 'Manuscrito com ilustrações detalhadas', 'Documento', 'Idade Média', 10),
('Bracelete de Ouro', 'Bracelete ornamentado com pedras preciosas', 'Joia', 'Reino da Mesopotâmia', 2),
('Máscara Funerária', 'Máscara usada em rituais funerários', 'Máscara', 'Civilização Asteca', 14),
('Tigela de Cerâmica', 'Tigela decorativa antiga', 'Artefato', 'Civilização Etrusca', 6),
('Espada Cerimonial', 'Espada usada em cerimônias', 'Arma', 'Japão Feudal', 11),
('Estátua de Buda', 'Estátua de Buda em bronze', 'Estátua', 'Japão', 10),
('Joia Imperial', 'Uma joia que pertenceu à família imperial', 'Joia', 'Japão', 11);

INSERT INTO PISTA (Descricao, LocalizacaoId) VALUES
('Procure onde o sol se põe', 1),
('Está escondido na sombra do grande obelisco', 2),
('A chave está na água', 3),
('O guardião de bronze aponta o caminho', 4),
('Entre os galhos do grande carvalho', 5),
('Está sendo usada como decoração de um templo', 5),
('Foi enterrada junta com a rainha', 2),
('Está na tumba de um grande guerreiro', 9), --**
('Localizada em um antigo cemitério da provincia', 9), --**
('Marcada com o símbolo de uma família importante para a época', 9),
('Siga a estrela solitária', 2),
('Na sombra da grande árvore', 3),
('Onde o rio encontra o mar', 4),
('No coração da montanha', 5),
('Sob a luz da lua cheia', 6),
('Entre as ruínas antigas', 7),
('No fundo do poço sem fim', 8),
('Na ponta do iceberg', 9),
('Dentro da caverna escura', 10),
('No centro do labirinto', 11),
('Encontrado no coração da fortaleza', 9),
('Protegido por espíritos antigos', 10),
('Guardado em um templo oculto', 11);

INSERT INTO INVESTIGACAO (PesquisadorId, Status) VALUES
(1, 'Execução'),
(2, 'Pausa'),
(3, 'Execução'),
(4, 'Concluida'),
(5, 'Planejamento'),
(10, 'Execução'), --** --id:6
(9, 'Pausa'),
(7, 'Execução'),
(10, 'Execução'),
(7, 'Planejamento'),
(3, 'Pausa'),
(5, 'Concluida'),
(1, 'Pausa'),
(7, 'Execução'),
(8, 'Planejamento'),
(11, 'Execução'),
(12, 'Concluida'),
(13, 'Execução');

INSERT INTO PISTA_INVESTIGACAO (PistaId, InvestigacaoId) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(8,6),
(9,6),
(10,1),
(11,8),
(12,7),
(13,10),
(14,11),
(15,14),
(16,13),
(17,12),
(18,11),
(19,9),
(20,10),
(21, 6),
(22, 11),
(23, 13);

INSERT INTO RELATO (Texto, Confianca, InvestigacaoId) VALUES
('Encontramos uma pista indicando a localização do tesouro', 3, 1),
('Uma nova pista foi descoberta perto do obelisco', 5, 2),
('Relatos indicam que o artefato está próximo de uma fonte de água', 2, 3),
('A estátua foi encontrada perto do templo, mas ainda falta encontrar o tesouro', 3, 4),
('A máscara de jade foi vista pela última vez em uma cerimônia no templo', 5, 5),
('A arma foi enterrada juntamete com seu dono', 5, 6),
('O tesouro está na fortaleza', 5, 6),
('É considerada uma herança de família', 5, 6),
('Está em um estado consideravelmente conservado para sua idade', 5, 7),
('Mapa antigo encontrado em um baú.', 4, 1),
('Dicas sobre um tesouro escondido na caverna.', 3, 2),
('Lenda local menciona ouro enterrado perto do rio.', 2, 3),
('Testemunha viu um cofre sendo enterrado.', 5, 4),
('Antigo diário detalha localização de joias.', 4, 5),
('Fragmentos de mapa achados na floresta.', 3, 6),
('Sinais estranhos encontrados em pedras.', 2, 7),
('Morador local fala sobre um tesouro na ilha.', 4, 8),
('Relato de um pescador sobre moedas de ouro.', 3, 9),
('Documento antigo sugere riqueza escondida no campo.', 4, 10),
('Indicações de tesouro embaixo de uma árvore centenária.', 2, 11),
('Testemunha afirma ter visto baús de ouro.', 5, 12),
('Arqueólogos encontram indícios de tesouro perdido.', 4, 13),
('Antigo pergaminho descreve uma rota até o tesouro.', 4, 14),
('Histórias de piratas sobre tesouros enterrados.', 3, 15),
('Mapas indicam localização de riquezas no deserto.', 3, 1),
('Histórias familiares sobre tesouros em cavernas.', 2, 2),
('Pistas encontradas em velhos manuscritos.', 4, 3),
('Exploradores descobrem símbolos de tesouro em ruínas.', 5, 4),
('Relato de um caçador sobre joias em um poço antigo.', 3, 5),
('Inscrições antigas sugerem presença de ouro.', 4, 6),
('Histórias de marinheiros sobre tesouros submersos.', 2, 7),
('Relato de um eremita sobre um baú em uma montanha.', 5, 8),
('Exploradores encontram mapa parcialmente destruído.', 3, 9),
('Lenda de um tesouro escondido por um rei antigo.', 4, 10),
('Relato de aldeões sobre moedas de prata.', 2, 11),
('Documentos históricos indicam uma fortuna enterrada.', 4, 12),
('Relato de um minerador sobre pedras preciosas.', 3, 13),
('Mapa do tesouro encontrado em um navio naufragado.', 5, 14),
('Histórias de um tesouro escondido durante a guerra.', 4, 15),
('Indícios de ouro enterrado no quintal de uma velha casa.', 3, 1),
('Relato sobre um artefato de grande valor na fortaleza', 5, 14),
('Informações sobre um tesouro guardado por espíritos', 5, 11),
('Documentos antigos descrevem um templo oculto', 4, 13);