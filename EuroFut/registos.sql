/*
TeSP_PSI_2022_CDBD
Sistema de Informação para a Gestão de Torneios de Futebol da Europa
Eurofut
António Russo Figueiras, estudante n.º 2211864
Gilberto Gil Carvalho, estudante n.º 2120013
*/

-- Inserir dados na tabela pais
INSERT INTO pais VALUES 
(NULL, 'Portugal', 'PT'),
(NULL, 'Espanha', 'ESP'),
(NULL, 'Inglaterra', 'UK'),
(NULL, 'França', 'FR'),
(NULL, 'Alemanha', 'DE'),
(NULL, 'Itália', 'IT'),
(NULL, 'Uruguai', 'UY');
-- Inserir dados na tabela cargo
INSERT INTO cargo VALUES 
(NULL,'Principal'),
(NULL,'Adjunto'),
(NULL,'Guarda-Redes'),
(NULL, 'Preparador Fisico'),
(NULL, 'Fisiologista'),
(NULL, 'Fisioterapeuta'),
(NULL, 'Médico/Enfermeiro'),
(NULL, 'Nutricionista');

-- Inserir dados na tabela equipa
INSERT INTO equipa VALUES 
(NULL, 'Benfica', 'SLB', 'A', 2, 1, LOAD_FILE('c:\\wamp64\\tmp\\benfica.png')),
(NULL, 'Vitória SC', 'VSC', 'A', 5, 3, LOAD_FILE('c:\\wamp64\\tmp\\vitoriasc.png')),
(NULL, 'SC Covilhã', 'SCC', 'A', 5, 4, LOAD_FILE('c:\\wamp64\\tmp\\sccovilha.png')),
(NULL, 'FC Famalicão', 'FCF', 'B', 5, 9, LOAD_FILE('c:\\wamp64\\tmp\\fcfamalicao.png')),
(NULL, 'FC Penafiel', 'FCP', 'B', 5, 10, LOAD_FILE('c:\\wamp64\\tmp\\fcpenafiel.png')),
(NULL, 'Boavista', 'BFC', 'C', 3, 2, LOAD_FILE('c:\\wamp64\\tmp\\boavista.png')),
(NULL, 'Paços de Ferreira', 'FCPF', 'C', 5, 8, LOAD_FILE('c:\\wamp64\\tmp\\pacosferreira.png')),
(NULL, 'SC Braga', 'SCB', 'C', 5, 7, LOAD_FILE('c:\\wamp64\\tmp\\scbraga.png')),
(NULL, 'Santa Clara', 'CDSC', 'D', 3, 6, LOAD_FILE('c:\\wamp64\\tmp\\santaclara.png')),
(NULL, 'FC Porto', 'FCP', 'D', 5, 2, LOAD_FILE('c:\\wamp64\\tmp\\fcporto.png')),
(NULL, 'Rio Ave', 'RAFC', 'D', 5, 5, LOAD_FILE('c:\\wamp64\\tmp\\rioave.png')),
(NULL, 'Sporting', 'SCP', 'B', 1, 1, LOAD_FILE('c:\\wamp64\\tmp\\sporting.png'));

-- Inserir dados na tabela estadio
INSERT INTO estadio VALUES 
(NULL,'Estádio do Sport Lisboa e Benfica', '65647', 1, 1),
(NULL,'Estádio D. Afonso Henriques', '30029', 2, 3),
(NULL,'Estádio Municipal José dos Santos Pinto', '3500', 3, 4),
(NULL,'Estádio José Alvalade', '50095', 12, 1),
(NULL,'Estádio Municipal de Famalicão', '5307', 4, 9),
(NULL,'Estádio Municipal 25 de Abril', '5300', 5, 10),
(NULL,'Estádio do Bessa Séc. XXI', '28263', 6, 10);

-- Inserir dados na tabela treinador
INSERT INTO equipatecnica VALUES 
(NULL, 'Nélson Veríssimo', 45, 12, 1, 1),
(NULL, 'Marco Pimenta', 25, 1, 2, 1),
(NULL, 'Pepa', 41, 13, 1, 2),
(NULL, 'Leonel Pontes', 49, 14, 1, 3),
(NULL, 'Rúben Amorim', 37, 1, 1, 12),
(NULL, 'Rui Pedro Silva', 45, 14, 1, 4),
(NULL, 'Filipe Rocha', 50, 11, 1, 5),
(NULL, 'Petit', 45, 15, 1, 6),
(NULL, 'César Peixoto', 42, 3, 1, 7),
(NULL, 'Carlos Carvalhal', 56, 7, 1, 8),
(NULL, 'Mário Silva', 45, 2, 1, 9),
(NULL, 'Sérgio Conceição', 47, 16, 1, 4),
(NULL, 'Luís Freire', 36, 1, 1, 11);

-- Inserir dados na tabela posicao
INSERT INTO posicao VALUES 
('GR', 'Guarda-Redes'),
('DC', 'Defesa Central'),
('DE', 'Defesa Esquerdo'),
('DD', 'Defesa Direito'),
('MD', 'Médio Defensivo'),
('MC', 'Médio Centro'),
('ED', 'Extremo Direito'),
('EE', 'Extremo Esquerdo'),
('PL', 'Ponta de Lança');

-- Inserir dados na tabela jogador
INSERT INTO jogador VALUES 
(NULL, 'Odyssseas Vlachodimos', 99, 'GR', 15000000, '1994-04-26', 191, 16, 1),
(NULL, 'João Mário', 20, 'MC', 12000000, '1993-01-19', 179, 2, 1),
(NULL, 'Álex Grimaldo', 3, 'DE', 20000000, '1995-09-20', 171, 17, 1),
(NULL, 'Adel Taarabt', 49, 'MC', 3000000, '1989-05-24', 185, 16, 1),
(NULL, 'Gonçalo Ramos', 88, 'PL', 10000000, '2001-06-20', 185, 18, 1),
(NULL, 'Darwin Núñez', 9, 'PL', 10000000, '1999-06-24', 187, 19, 1);

-- Inserir dados na tabela torneio
INSERT INTO torneio VALUES 
(NULL, 'Allianz Cup', 1);

-- Inserir dados na tabela torneio_epoca
INSERT INTO torneio_epoca VALUES 
(NULL, 1, 2021, NULL);

-- Inserir dados na tabela jogo
INSERT INTO jogo VALUES 
(NULL, 'G', 1, '2021-09-21', 1, NULL);

-- Inserir dados na tabela estatisticas
INSERT INTO estatisticas VALUES 
(6, 23, 5, 45, 3, 2);