INSERT INTO LOCALIZACAO (Nome, Descricao, Lat, Lon) VALUES 
('Ilha Perdida', 'Uma ilha remota e inexplorada', -15.793889, -47.882778),
('Tumba Real', 'Uma tumba secreta no deserto', 25.686614, 32.639635),
('Caverna Misteriosa', 'Uma caverna nas montanhas', 35.689487, 139.691711),
('Ruínas Antigas', 'Ruínas de uma civilização perdida', 29.979234, 31.134202),
('Templo Esquecido', 'Um templo coberto pela selva', -3.465305, -62.215881),
('Ilha do Tesouro', 'Uma ilha cheia de lendas', -20.3155, -40.3128),
('Caverna Oculta', 'Uma caverna escondida entre as montanhas', 40.7128, -74.0060),
('Templo Abandonado', 'Um templo antigo e misterioso', 34.0522, -118.2437),
('Fortaleza Perdida', 'Ruínas de uma fortaleza antiga', 51.5074, -0.1278),
('Praia Secreta', 'Uma praia isolada e inexplorada', -22.9068, -43.1729);

INSERT INTO MUSEU (Nome, Localizacao) VALUES 
('Museu de História Antiga', 'Cidade Velha'),
('Museu Arqueológico Nacional', 'Capitólio'),
('Museu das Relíquias', 'Centro Histórico'),
('Museu das Civilizações', 'Praça Central'),
('Museu Histórico Internacional', 'Avenida Principal'),
('Museu das Culturas', 'Bairro Antigo');

INSERT INTO PESQUISADOR (Nome, Especialidade, MuseuId) VALUES 
('Dr. João Silva', 'Arqueologia', 1),
('Dra. Maria Santos', 'História Antiga', 2),
('Dr. Carlos Pereira', 'Antropologia', 3),
('Dra. Ana Costa', 'Paleontologia', 1),
('Dr. Pedro Souza', 'Epigrafia', 2),
('Dr. Fernanda Lima', 'Egiptologia', 1),
('Dr. Ricardo Alves', 'História Medieval', 2),
('Dr. Juliana Nunes', 'Arqueologia Subaquática', 3),
('Dra. Beatriz Costa', 'Etnologia', 1),
('Dr. Henrique Souza', 'História Pré-Colombiana', 2);

INSERT INTO TESOURO (Nome, Descricao, Tipo, Valor, Origem, LocalizacaoId) VALUES 
('Tesouro dos Piratas', 'Baú cheio de moedas de ouro', 'Baú', 100000.00, 'Piratas', 1),
('Joia do Faraó', 'Colar de ouro com pedras preciosas', 'Joia', 500000.00, 'Egito Antigo', 2),
('Relíquia Sagrada', 'Artefato religioso antigo', 'Artefato', 750000.00, 'Civilização Desconhecida', 3),
('Estatueta de Bronze', 'Estatueta de uma deidade antiga', 'Estátua', 300000.00, 'Roma Antiga', 4),
('Máscara de Jade', 'Máscara cerimonial rara', 'Máscara', 250000.00, 'Civilização Maia', 5),
('Tesouro dos Vikings', 'Baú com joias e moedas antigas', 'Baú', 200000.00, 'Vikings', 6),
('Tesouro Maia', 'Artefatos sagrados e pedras preciosas', 'Artefato', 450000.00, 'Civilização Maia', 7),
('Tesouro dos Templários', 'Relíquias e ouro dos Templários', 'Relíquia', 700000.00, 'Templários', 8),
('Tesouro do Samurai', 'Espada e armadura de um grande guerreiro', 'Arma', 350000.00, 'Japão Feudal', 9),
('Tesouro dos Incas', 'Ouro e artefatos cerimoniais', 'Artefato', 600000.00, 'Incas', 10);

INSERT INTO PISTA (Descricao, TesouroId) VALUES 
('Procure onde o sol se põe', 1),
('Está escondido na sombra do grande obelisco', 2),
('A chave está na água', 3),
('O guardião de bronze aponta o caminho', 4),
('Entre os galhos do grande carvalho', 5),
('Procure o baú onde as lendas se encontram', 6),
('O tesouro está escondido entre as sombras da caverna', 7),
('A relíquia está guardada no templo mais antigo', 8),
('A espada está enterrada perto da fortaleza', 9),
('Os artefatos estão sob as areias da praia', 10);

INSERT INTO RELATO (Texto, TesouroId) VALUES 
('Dizem que os piratas esconderam seu tesouro na ilha onde ninguém ousa ir', 1),
('O faraó foi enterrado com suas joias mais valiosas em uma tumba que nunca foi descoberta', 2),
('O artefato sagrado foi protegido por gerações', 3),
('A estátua de bronze foi vista pela última vez em um antigo templo', 4),
('A máscara de jade era usada em rituais secretos', 5),
('Os vikings esconderam suas riquezas em uma ilha cheia de lendas', 6),
('Dizem que os maias ocultaram seus tesouros nas profundezas da caverna', 7),
('As relíquias dos templários foram escondidas no templo abandonado', 8),
('O grande samurai enterrou sua espada perto da antiga fortaleza', 9),
('Os incas esconderam seus artefatos cerimoniais sob as areias de uma praia secreta', 10);

INSERT INTO INVESTIGACAO (PesquisadorId, TesouroId, Data, Relato) VALUES 
(1, 1, '2023-01-15', 'Encontramos uma pista indicando a localização do tesouro'),
(2, 2, '2023-02-20', 'Uma nova pista foi descoberta perto do obelisco'),
(3, 3, '2023-03-10', 'Relatos indicam que o artefato está próximo de uma fonte de água'),
(4, 4, '2023-04-05', 'A estátua foi encontrada perto do templo, mas ainda falta encontrar o tesouro'),
(5, 5, '2023-05-18', 'A máscara de jade foi vista pela última vez em uma cerimônia no templo'),
(1, 6, '2023-06-01', 'Descobrimos uma pista indicando a ilha como a localização do tesouro'),
(2, 7, '2023-06-02', 'A pista nos levou à caverna oculta nas montanhas'),
(3, 8, '2023-06-03', 'Relatos antigos indicam que o tesouro dos templários está no templo abandonado'),
(4, 9, '2023-06-04', 'O tesouro do samurai foi enterrado perto da fortaleza'),
(5, 10, '2023-06-05', 'Investigamos e descobrimos que os artefatos estão na praia secreta');

INSERT INTO HISTORICO (Texto, TesouroId) VALUES 
('O tesouro dos piratas está escondido na ilha perdida', 1),
('As joias do faraó estão na tumba real', 2),
('A relíquia sagrada está na caverna misteriosa', 3),
('A estatueta de bronze está nas ruínas antigas', 4),
('A máscara de jade está no templo esquecido', 5),
('O tesouro dos vikings está na ilha do tesouro', 6),
('O tesouro maia está na caverna oculta', 7),
('O tesouro dos templários está no templo abandonado', 8),
('O tesouro do samurai está na fortaleza perdida', 9),
('O tesouro dos incas está na praia secreta', 10);