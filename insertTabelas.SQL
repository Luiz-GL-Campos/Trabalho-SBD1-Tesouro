INSERT INTO LOCALIZACAO (Nome, Descricao, Regiao) VALUES --OK
('Ilha Perdida', 'Uma ilha remota e inexplorada', 'Triângulo das Bermudas'), --id: 1
('Tumba Real', 'Uma tumba secreta no deserto', 'Cairo'), --id: 2
('Caverna Misteriosa', 'Uma caverna nas montanhas', 'Desconhecida'), --id: 3
('Ruínas Antigas', 'Ruínas de uma civilização perdida', 'Roma'), --id: 4
('Templo Esquecido', 'Um templo coberto pela selva', 'México') --id: 5
('Ilha do Tesouro', 'Uma ilha cheia de lendas', 'Islândia'), --id: 6
('Caverna Oculta', 'Uma caverna escondida entre as montanhas', 'México'), --id: 7
('Templo Abandonado', 'Um templo antigo e misterioso', ''), --id: 8
('Fortaleza Perdida', 'Ruínas de uma fortaleza antiga', 'Japão'), --**  --id: 9
('Praia Secreta', 'Uma praia isolada e inexplorada', 'Caribe'), --id: 10
('Caverna', 'Ilha remota com um vulcão ativo', 'Japão'), --id: 11
('Fundo do Lago', 'Lago encontrado após uma escalada dificil em uma montanha', 'Japão'); --id: 12

INSERT INTO MUSEU (Nome, TipoExposicao) VALUES --OK
('Museu de História Antiga', 'História Antiga'), --id: 1
('Museu Arqueológico Nacional', 'Arqueologia'), --id: 2
('Museu das Relíquias', 'Relíquias'), --id: 3
('Museu das Civilizações', 'Civilizações'), --id: 4
('Museu Histórico Internacional', 'História Internacional'), --id: 5
('Museu de Arte Ocidental', 'Regime Feudal dos Xoguns'); --id: 6

INSERT INTO PESQUISADOR (Nome, Especialidade, MuseuId) VALUES --OK
('Dr. João Silva', 'Arqueologia', 1),
('Dra. Maria Santos', 'História Antiga', 2),
('Dr. Carlos Pereira', 'Antropologia', 3),
('Dra. Ana Costa', 'Paleontologia', 4),
('Dr. Pedro Souza', 'Epigrafia', 5),
('Dr. Fernanda Lima', 'Egiptologia', 1),
('Dr. Ricardo Alves', 'Era Medieval', 2),
('Dr. Juliana Nunes', 'Arqueologia Subaquática', 3),
('Dra. Beatriz Costa', 'Etnologia', 4),
('Dr. Henrique Souza', 'Japão Feudal', 5); --**

INSERT INTO TESOURO (Nome, Descricao, Tipo, Origem, LocalizacaoId) VALUES --OK
('Máscara de Jade', 'Máscara cerimonial rara', 'Máscara', 'Civilização Maia', 5),
('Herança do Samurai', 'Espada e armadura de um grande guerreiro', 'Arma','Japão Feudal', 9), --**
('Joia do Faraó', 'Colar de ouro com pedras preciosas', 'Joia', 'Egito Antigo', 2),
('Tesouro Maia', 'Artefatos sagrados e pedras preciosas', 'Artefato', 'Civilização Maia', 7),
('Tesouro dos Vikings', 'Baú com joias e moedas antigas', 'Baú', 'Vikings', 6),
('Tesouro dos Piratas', 'Baú cheio de moedas de ouro', 'Baú', 'Piratas', 1),
('Estatueta de Bronze', 'Estatueta de uma deidade antiga', 'Estátua', 'Roma Antiga', 4),
('Tesouro dos Templários', 'Relíquias e ouro dos Templários', 'Relíquia','Templários', 8),
('Tesouro dos Incas', 'Ouro e artefatos cerimoniais', 'Artefato', 'Incas', 10),
('Relíquia Sagrada', 'Artefato religioso antigo', 'Artefato', 'Civilização Desconhecida', 3);

INSERT INTO PISTA (Descricao, LocalizacaoId) VALUES --OK
('Procure onde o sol se põe', 1),
('Está escondido na sombra do grande obelisco', 2),
('A chave está na água', 3),
('O guardião de bronze aponta o caminho', 4),
('Entre os galhos do grande carvalho', 5),
('Está sendo usada como decoração de um templo', 5),
('Foi enterrada junta com a rainha', 2),
('Está na tumba de um grande guerreiro', 9),
('Entrada secreta encontrada atrás de uma estante antiga', 9),
('Marcada com o símbolo de uma família importante para a época', 9);

INSERT INTO PISTA_INVESTIGACAO (PistaId, InvestigacaoId) VALUES -- OK
(1,1),
(2,2),
(3,3),
(4,4),
(5,5)
(8,6),
(9,6),
(10,1);

INSERT INTO INVESTIGACAO (PesquisadorId, Status) VALUES --OK
(1, 'Execução'),
(2, 'Pausa'),
(3, 'Execução'),
(4, 'Concluida'),
(5, 'Planejamento'),
(10, 'Execução'), --** --id:6
(9, 'Pausa'),
(7, 'Execução'),
(6, 'Concluida'),
(8, 'Planejamento');

INSERT INTO RELATO (Texto, Confianca, InvestigacaoId) VALUES --OK
('Encontramos uma pista indicando a localização do tesouro', 3, 1),
('Uma nova pista foi descoberta perto do obelisco', 5, 2),
('Relatos indicam que o artefato está próximo de uma fonte de água', 2, 3),
('A estátua foi encontrada perto do templo, mas ainda falta encontrar o tesouro', 3, 4),
('A máscara de jade foi vista pela última vez em uma cerimônia no templo', 5, 5)
('A arma foi enterrada juntamete com seu dono', 5, 10),
('O tesouro está na fortaleza', 5, 10),
('É considerada uma herança de família', 5, 10),
('Está em um estado consideravelmente conservado para sua idade', 5, 7),



-- INSERT INTO LOCALIZACAO (Nome, Descricao, Lat, Lon) VALUES 
-- ('Ilha Perdida', 'Uma ilha remota e inexplorada', -15.793889, -47.882778),
-- ('Tumba Real', 'Uma tumba secreta no deserto', 25.686614, 32.639635),
-- ('Caverna Misteriosa', 'Uma caverna nas montanhas', 35.689487, 139.691711),
-- ('Ruínas Antigas', 'Ruínas de uma civilização perdida', 29.979234, 31.134202),
-- ('Templo Esquecido', 'Um templo coberto pela selva', -3.465305, -62.215881),
-- ('Ilha do Tesouro', 'Uma ilha cheia de lendas', -20.3155, -40.3128),
-- ('Caverna Oculta', 'Uma caverna escondida entre as montanhas', 40.7128, -74.0060),
-- ('Templo Abandonado', 'Um templo antigo e misterioso', 34.0522, -118.2437),
-- ('Fortaleza Perdida', 'Ruínas de uma fortaleza antiga', 51.5074, -0.1278),
-- ('Praia Secreta', 'Uma praia isolada e inexplorada', -22.9068, -43.1729);

-- INSERT INTO MUSEU (Nome, Localizacao) VALUES 
-- ('Museu de História Antiga', 'Cidade Velha'),
-- ('Museu Arqueológico Nacional', 'Capitólio'),
-- ('Museu das Relíquias', 'Centro Histórico'),
-- ('Museu das Civilizações', 'Praça Central'),
-- ('Museu Histórico Internacional', 'Avenida Principal'),
-- ('Museu das Culturas', 'Bairro Antigo');

-- INSERT INTO PESQUISADOR (Nome, Especialidade, MuseuId) VALUES 
-- ('Dr. João Silva', 'Arqueologia', 1),
-- ('Dra. Maria Santos', 'História Antiga', 2),
-- ('Dr. Carlos Pereira', 'Antropologia', 3),
-- ('Dra. Ana Costa', 'Paleontologia', 1),
-- ('Dr. Pedro Souza', 'Epigrafia', 2),
-- ('Dr. Fernanda Lima', 'Egiptologia', 1),
-- ('Dr. Ricardo Alves', 'História Medieval', 2),
-- ('Dr. Juliana Nunes', 'Arqueologia Subaquática', 3),
-- ('Dra. Beatriz Costa', 'Etnologia', 1),
-- ('Dr. Henrique Souza', 'História Pré-Colombiana', 2);

-- INSERT INTO TESOURO (Nome, Descricao, Tipo, Valor, Origem, LocalizacaoId) VALUES 
-- ('Tesouro dos Piratas', 'Baú cheio de moedas de ouro', 'Baú', 100000.00, 'Piratas', 1),
-- ('Joia do Faraó', 'Colar de ouro com pedras preciosas', 'Joia', 500000.00, 'Egito Antigo', 2),
-- ('Relíquia Sagrada', 'Artefato religioso antigo', 'Artefato', 750000.00, 'Civilização Desconhecida', 3),
-- ('Estatueta de Bronze', 'Estatueta de uma deidade antiga', 'Estátua', 300000.00, 'Roma Antiga', 4),
-- ('Máscara de Jade', 'Máscara cerimonial rara', 'Máscara', 250000.00, 'Civilização Maia', 5),
-- ('Tesouro dos Vikings', 'Baú com joias e moedas antigas', 'Baú', 200000.00, 'Vikings', 6),
-- ('Tesouro Maia', 'Artefatos sagrados e pedras preciosas', 'Artefato', 450000.00, 'Civilização Maia', 7),
-- ('Tesouro dos Templários', 'Relíquias e ouro dos Templários', 'Relíquia', 700000.00, 'Templários', 8),
-- ('Tesouro do Samurai', 'Espada e armadura de um grande guerreiro', 'Arma', 350000.00, 'Japão Feudal', 9),
-- ('Tesouro dos Incas', 'Ouro e artefatos cerimoniais', 'Artefato', 600000.00, 'Incas', 10);

-- INSERT INTO PISTA (Descricao, TesouroId) VALUES 
-- ('Procure onde o sol se põe', 1),
-- ('Está escondido na sombra do grande obelisco', 2),
-- ('A chave está na água', 3),
-- ('O guardião de bronze aponta o caminho', 4),
-- ('Entre os galhos do grande carvalho', 5),
-- ('Procure o baú onde as lendas se encontram', 6),
-- ('O tesouro está escondido entre as sombras da caverna', 7),
-- ('A relíquia está guardada no templo mais antigo', 8),
-- ('A espada está enterrada perto da fortaleza', 9),
-- ('Os artefatos estão sob as areias da praia', 10);

-- INSERT INTO RELATO (Texto, TesouroId) VALUES 
-- ('Dizem que os piratas esconderam seu tesouro na ilha onde ninguém ousa ir', 1),
-- ('O faraó foi enterrado com suas joias mais valiosas em uma tumba que nunca foi descoberta', 2),
-- ('O artefato sagrado foi protegido por gerações', 3),
-- ('A estátua de bronze foi vista pela última vez em um antigo templo', 4),
-- ('A máscara de jade era usada em rituais secretos', 5),
-- ('Os vikings esconderam suas riquezas em uma ilha cheia de lendas', 6),
-- ('Dizem que os maias ocultaram seus tesouros nas profundezas da caverna', 7),
-- ('As relíquias dos templários foram escondidas no templo abandonado', 8),
-- ('O grande samurai enterrou sua espada perto da antiga fortaleza', 9),
-- ('Os incas esconderam seus artefatos cerimoniais sob as areias de uma praia secreta', 10);

-- INSERT INTO INVESTIGACAO (PesquisadorId, TesouroId, Data, Relato) VALUES 
-- (1, 1, '2023-01-15', 'Encontramos uma pista indicando a localização do tesouro'),
-- (2, 2, '2023-02-20', 'Uma nova pista foi descoberta perto do obelisco'),
-- (3, 3, '2023-03-10', 'Relatos indicam que o artefato está próximo de uma fonte de água'),
-- (4, 4, '2023-04-05', 'A estátua foi encontrada perto do templo, mas ainda falta encontrar o tesouro'),
-- (5, 5, '2023-05-18', 'A máscara de jade foi vista pela última vez em uma cerimônia no templo'),
-- (1, 6, '2023-06-01', 'Descobrimos uma pista indicando a ilha como a localização do tesouro'),
-- (2, 7, '2023-06-02', 'A pista nos levou à caverna oculta nas montanhas'),
-- (3, 8, '2023-06-03', 'Relatos antigos indicam que o tesouro dos templários está no templo abandonado'),
-- (4, 9, '2023-06-04', 'O tesouro do samurai foi enterrado perto da fortaleza'),
-- (5, 10, '2023-06-05', 'Investigamos e descobrimos que os artefatos estão na praia secreta');