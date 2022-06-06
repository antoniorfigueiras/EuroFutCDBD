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

-- Inserir dados na tabela cidade
INSERT INTO cidade VALUES
(NULL, 'Lisboa', 1),
(NULL, 'Guimarães', 1),
(NULL, 'Covilhã', 1),
(NULL, 'Vila Nova de Famalicão', 1),
(NULL, 'Penafiel', 1),
(NULL, 'Porto', 1),
(NULL, 'Paços de Ferreira', 1),
(NULL, 'Braga', 1),
(NULL, 'Ponta Delgada', 1),
(NULL, 'Vila do Conde', 1),
(NULL, 'Vila Franca de Xira', 1),
(NULL, 'Torres Novas', 1),
(NULL, 'Porto da Cruz', 1),
(NULL, 'Espinho', 1),
(NULL, 'Strasbourg', 4),
(NULL, 'Coimbra', 1);

-- Inserir dados na tabela equipa
INSERT INTO equipa VALUES 
(NULL, 'Benfica', 'SLB', 1, LOAD_FILE('c:\\wamp64\\tmp\\benfica.png')),
(NULL, 'Vitória SC', 'VSC', 2, LOAD_FILE('c:\\wamp64\\tmp\\vitoriasc.png')),
(NULL, 'SC Covilhã', 'SCC', 3, LOAD_FILE('c:\\wamp64\\tmp\\sccovilha.png')),
(NULL, 'Sporting', 'SCP', 1, LOAD_FILE('c:\\wamp64\\tmp\\sporting.png')),
(NULL, 'FC Famalicão', 'FCF', 4, LOAD_FILE('c:\\wamp64\\tmp\\fcfamalicao.png')),
(NULL, 'FC Penafiel', 'FCP', 5, LOAD_FILE('c:\\wamp64\\tmp\\fcpenafiel.png')),
(NULL, 'Boavista', 'BFC', 6, LOAD_FILE('c:\\wamp64\\tmp\\boavista.png')),
(NULL, 'Paços de Ferreira', 'FCPF', 7, LOAD_FILE('c:\\wamp64\\tmp\\pacosferreira.png')),
(NULL, 'SC Braga', 'SCB', 8, LOAD_FILE('c:\\wamp64\\tmp\\scbraga.png')),
(NULL, 'Santa Clara', 'CDSC', 9, LOAD_FILE('c:\\wamp64\\tmp\\santaclara.png')),
(NULL, 'FC Porto', 'FCP', 6, LOAD_FILE('c:\\wamp64\\tmp\\fcporto.png')),
(NULL, 'Rio Ave', 'RAFC', 10, LOAD_FILE('c:\\wamp64\\tmp\\rioave.png'));

-- Inserir dados na tabela estadio(id,nome,lotacao,id_equipa_estadio,id_cidade)
 INSERT INTO estadio VALUES 
 (NULL,'Estádio Municipal José dos Santos Pinto', '3500', 3, 3),
 (NULL,'Estádio D. Afonso Henriques', '30000', 2, 2),
 (NULL,'Estádio do Sport Lisboa e Benfica', '64642', 1, 1),
 (NULL,'Estádio Municipal de Famalicão', '5186', 5, 4),
 (NULL,'Estádio José Alvalade', '50095', 4, 1),
 (NULL,'Estádio Municipal 25 de Abril', '5230', 6, 5),
 (NULL,'Estádio Capital do Móvel', '9076', 8, 7),
 (NULL,'Estádio Municipal de Braga', '30286', 9, 8),
 (NULL,'Estádio do Bessa Séc. XXI', '28263', 7, 6),
 (NULL,'Estádio do Bessa Séc. XXI', '28263', 7, 6);



-- Inserir dados na tabela treinador
INSERT INTO treinador VALUES 
(NULL, 'Nélson Alexandre da Silva Veríssimo', '1977-04-17', 11, 1),
(NULL, 'Pedro Miguel Marques da Costa Filipe', '1980-12-14', 12, 2),
(NULL, 'Leonel Pontes da Encarnação', '1972-07-09', 13, 3),
(NULL, 'Rúben Filipe Marques Amorim', '1985-01-27', 1, 4),
(NULL, 'Rui Pedro Teixeira de Jesus da Silva', '1977-03-14', 6, 5),
(NULL, 'Filipe André Paula da Rocha', '1972-05-19', 14, 6),
(NULL, 'Armando Gonçalves Teixeira', '1976-09-25', 15, 7),
(NULL, 'Paulo César Silva Peixoto', '1980-05-12', 2, 8),
(NULL, 'Carlos Augusto Soares da Costa Faria Carvalhal', '1965-12-04', 8, 9),
(NULL, 'Mário Fernando Magalhães da Silva', '1977-04-24', 6, 10),
(NULL, 'Sérgio Paulo Marceneiro Conceição', '1974-11-15', 16, 11),
(NULL, 'Luís Carlos Batalha Freire', '1985-11-03', 1, 12);

-- Inserir dados na tabela treinador principal

INSERT INTO treinador_principal VALUES
(1,'Pro','S'),
(2,'Pro', 'N'),
(3,'Pro','S'),
(4,'Pro','S'),
(5,'Pro','S'),
(6,'Pro', 'N'),
(7,'Pro','S'),
(8,'Pro', 'N'),
(9,'Pro','S'),
(10,'Pro', 'N'),
(11,'Pro','S'),
(12,'Pro','S');

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
