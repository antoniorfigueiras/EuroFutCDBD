/*
TeSP_PSI_2022_CDBD
Sistema de Informação para a Gestão de Torneios de Futebol da Europa
Eurofut
António Russo Figueiras, estudante n.º 2211864
Gilberto Gil Carvalho, estudante n.º 2211878
*/

Use eurofut;
-- Inserir dados na tabela pais
INSERT INTO pais VALUES 
(1, 'Portugal', 'PT'),
(2, 'Espanha', 'ESP'),
(3, 'Inglaterra', 'UK'),
(4, 'França', 'FR'),
(5, 'Alemanha', 'DE'),
(6, 'Itália', 'IT'),
(7, 'Uruguai', 'UY'),
(8, 'Grécia', 'GR'),
(9, 'Brasil', 'BR'),
(10, 'Argentina', 'AR'),
(11, 'Bélgica', 'BE'),
(12, 'Suiça', 'SU');

-- Inserir dados na tabela cidade
INSERT INTO cidade VALUES
(1, 'Lisboa', 1),
(2, 'Guimarães', 1),
(3, 'Covilhã', 1),
(4, 'Vila Nova de Famalicão', 1),
(5, 'Penafiel', 1),
(6, 'Porto', 1),
(7, 'Paços de Ferreira', 1),
(8, 'Braga', 1),
(9, 'Ponta Delgada', 1),
(10, 'Vila do Conde', 1),
(11, 'Vila Franca de Xira', 1),
(12, 'Torres Novas', 1),
(13, 'Porto da Cruz', 1),
(14, 'Espinho', 1),
(15, 'Strasbourg', 4),
(16, 'Coimbra', 1),
(17, 'Stuttgart', 8),
(18, 'Valencia', 2),
(19, 'Rio de Janeiro', 9),
(20, 'Buenos Aires', 10),
(21, 'Sint-Niklaas', 11),
(22, 'Bad Aibling', 5),
(23, 'Artigas', 7),
(24, 'Olhão', 1),
(25, 'Fortaleza', 9),
(26, 'Póvoa de Varzim', 1),
(27, 'Sursee', 12),
(28, 'Saint-Malo', 4),
(29, 'Gondomar', 1),
(30, 'Montevideo', 7),
(31, 'Mina Gerais', 9),
(32, 'Barcelos', 1),
(33, 'Leiria', 1),
(34, 'São Paulo', 9),
(35, 'Madrid', 2),
(36, 'Porto Alegre', 9),
(37, 'Mafra', 1);

-- Inserir dados na tabela equipa
INSERT INTO equipa VALUES 
(1, 'Benfica', 'SLB', 1, LOAD_FILE('c:\\wamp64\\tmp\\benfica.png'), '1904'),
(2, 'Vitória SC', 'VSC', 2, LOAD_FILE('c:\\wamp64\\tmp\\vitoriasc.png'), '1922'),
(3, 'SC Covilhã', 'SCC', 3, LOAD_FILE('c:\\wamp64\\tmp\\sccovilha.png'), '1923'),
(4, 'Sporting', 'SCP', 1, LOAD_FILE('c:\\wamp64\\tmp\\sporting.png'), '1906'),
(5, 'FC Famalicão', 'FCF', 4, LOAD_FILE('c:\\wamp64\\tmp\\fcfamalicao.png'), '1931'),
(6, 'FC Penafiel', 'FCP', 5, LOAD_FILE('c:\\wamp64\\tmp\\fcpenafiel.png'), '1951'),
(7, 'Boavista', 'BFC', 6, LOAD_FILE('c:\\wamp64\\tmp\\boavista.png'), '1903'),
(8, 'Paços de Ferreira', 'FCPF', 7, LOAD_FILE('c:\\wamp64\\tmp\\pacosferreira.png'), '1950'),
(9, 'SC Braga', 'SCB', 8, LOAD_FILE('c:\\wamp64\\tmp\\scbraga.png'), '1921'),
(10, 'Santa Clara', 'CDSC', 9, LOAD_FILE('c:\\wamp64\\tmp\\santaclara.png'), '1927'),
(11, 'FC Porto', 'FCP', 6, LOAD_FILE('c:\\wamp64\\tmp\\fcporto.png'), '1893'),
(12, 'Rio Ave', 'RAFC', 10, LOAD_FILE('c:\\wamp64\\tmp\\rioave.png'), '1939'),
(13, 'Estoril Praia', 'GDEP', 1, LOAD_FILE('c:\\wamp64\\tmp\\estorilpraia.png'), '1939'),
(12, 'CD Mafra', 'CDM', 37, LOAD_FILE('c:\\wamp64\\tmp\\cdmafra.png'), '1965');

-- Inserir dados na tabela estadio(id,nome,lotacao,id_equipa_estadio,id_cidade)
 INSERT INTO estadio VALUES 
 (1,'Estádio Municipal José dos Santos Pinto', '3500', 3, 3),
 (2,'Estádio D. Afonso Henriques', '30000', 2, 2),
 (3,'Estádio do Sport Lisboa e Benfica', '64642', 1, 1),
 (4,'Estádio Municipal de Famalicão', '5186', 5, 4),
 (5,'Estádio José Alvalade', '50095', 4, 1),
 (6,'Estádio Municipal 25 de Abril', '5230', 6, 5),
 (7,'Estádio Capital do Móvel', '9076', 8, 7),
 (8,'Estádio Municipal de Braga', '30286', 9, 8),
 (9,'Estádio do Bessa Séc. XXI', '28263', 7, 6),
 (10,'Estádio do Rio Ave FC (Arcos)', '9065', 12, 10),
 (11,'Estádio de São Miguel', '12500', 10, 9),
 (12,'Estádio do Dragão', '50033', 11, 6),
 (13,'Estádio Dr. Magalhães Pessoa', '23888 ', NULL, 33);



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

-- Inserir dados na tabela jogador (id, nome, numero, id_posicao, valor, dtaNascimento, altura, id_cidade, id_equipa, pe_preferido)
INSERT INTO jogador VALUES 
(NULL, 'Odyssseas Vlachodimos', 99, 'GR', 15000000, '1994-04-26', 191, 17, 1, 'DIR'),
(NULL, 'Alejandro Grimaldo García', 3, 'DE', 20000000, '1995-09-20', 171, 18, 1, 'ESQ'),
(NULL, 'Gilberto Moraes Júnior', 2, 'DD', 5000000, '1993-03-07', 181, 19, 1, 'DIR'),
(NULL, 'Nicolás Hernán Gonzalo Otamendi', 30, 'DC', 3500000, '1988-02-12', 183, 20, 1, 'DIR'),
(NULL, 'Jan Bert Lieve Vertonghen', 5, 'DC', 2000000, '1987-04-24', 189, 21, 1, 'ESQ'),
(NULL, 'Julian Weigl', 28, 'MD', 22000000, '1995-09-08', 186, 22, 1, 'DIR'),
(NULL, 'João Mário Naval da Costa Eduardo', 20, 'MC', 10000000, '1993-01-19', 179, 6, 1, 'DIR'),
(NULL, 'Darwin Gabriel Núñez Ribeiro', 9, 'PL', 55000000, '1999-06-24', 187, 23, 1, 'DIR'),
(NULL, 'Gonçalo Matias Ramos', 88, 'PL', 14000000, '2001-06-20', 185, 24, 1, 'DIR'),
(NULL, 'Everton Sousa Soares', 7, 'EE', 15000000, '1996-03-22', 174, 25, 1, 'DIR'),
(NULL, 'Rafael Alexandre Fernandes Ferreira Silva', 27, 'ED', 20000000, '1993-05-17', 172, 11, 1, 'DIR'),
(NULL, 'Gilberto Manuel Pereira da Silva', 8, 'MD', 50000, '1987-03-26', 171, 2, 3, 'DIR'),
(NULL, 'Haris Seferovic', 14, 'PL', 8000000, '1992-02-22', 189, 27, 1, 'ESQ'),
(NULL, 'Nicolas Janvier', 98, 'MC', 1000000, '1998-08-11', 171, 28, 2, 'DIR'),
(NULL, 'João Diogo Fonseca Ferreira', 82, 'DD', 700000, '2001-03-22', 185, 26, 2, 'DIR'),
(NULL, 'Domingos André Ribeiro Almeida', 70, 'MC', 5000000, '2001-03-22', 172, 2, 3, 'DIR'),
(NULL, 'Diogo Filipe Costa Rocha', 16, 'MC', 3000000, '1995-05-03', 169, 1, 2, 'DIR'),
(NULL, 'Pizzi Luís Miguel Afonso Fernandes', 20, 'MC', 4000000, '1989-10-06', 177, 1, 1, 'DIR'),
(NULL, 'André Filipe Brás André', 32, 'MC', 2000000, '1989-08-26', 174, 10, 2, 'DIR'),
(NULL, 'Ivo Tiago dos Santos Rodrigues', 7, 'EE', 1500000, '1995-03-30', 180, 29, 5, 'DIR'),
(NULL, 'Nuno Miguel Gomes dos Santos', 11, 'EE', 8000000, '1995-02-13', 177, 4, 4, 'ESQ'),
(NULL, 'Manuel Ugarte Ribeiro', 8, 'MD', 15000000, '2001-04-11', 182, 30, 4, 'DIR'),
(NULL, 'Heriberto Moreno Borges Tavares', 91, 'ED', 1500000, '1997-02-19', 181, 1, 4, 'ESQ'),
(NULL, 'Tiago Barreiros de Melo Tomás', 18, 'ED', 7000000, '2002-06-16', 183, 1, 4, 'DIR'),
(NULL, 'Bruno Vinícius Souza Ramos', 7, 'ED', 4000000, '1997-03-30', 175, 31, 4, 'ESQ'),
(NULL, 'Sebastián Coates Nión', 4, 'DC', 8000000, '1990-10-07', 196, 30, 4, 'DIR'),
(NULL, 'Filipe Miguel Neves Ferreira', 20, 'DE', 400000, '1990-09-27', 178, 1, 7, 'ESQ'),
(NULL, 'Gustavo Affonso Sauerbeck', 11, 'EE', 400000, '1993-04-30', 181, 31, 7, 'ESQ'),
(NULL, 'Rafael António Figueiredo Ramos', 21, 'DD', 1000000, '1995-01-09', 170, 3, 10, 'DIR'),
(NULL, 'José Manuel Silva Oliveira', 25, 'ED', 2000000, '1990-10-23', 181, 5, 12, 'DIR'),
(NULL, 'Mehdi Taremi', 9, 'PL', 2000000, '1992-07-18', 187, 7, 11, 'DIR'),
(NULL, 'Matheus Reis de Lima', 2, 'DE', 8000000, '1995-02-18', 183, 34, 4, 'ESQ'),
(NULL, 'Pablo Sarabia García', 17, 'ED', 15000000, '1992-05-11', 174, 35, 4, 'ESQ'),
(NULL, 'Mikel Villanueva Álvarez', 3, 'DC', 100000, '1993-04-14', 192, 35, 10, 'ESQ'),
(NULL, 'Lincoln Henrique Oliveira Dos Santos', 10, 'MO', 5000000, '1998-11-07', 178, 36, 10, 'ESQ'),
(NULL, 'Gonçalo Bernardo Inácio', 25, 'DC', 23000000, '2001-08-25', 185, 1, 4, 'ESQ');

-- Inserir dados na tabela torneio
INSERT INTO torneio VALUES 
(NULL, 'Allianz Cup', 1),
(NULL, 'Taça de Portugal Placard', 1),
(NULL, 'The Emirates FA Cup', 3);

-- Inserir dados na tabela torneio_epoca
INSERT INTO torneio_epoca VALUES 
(NULL, 1, 2021, NULL),
(NULL, 1, 2020, NULL),
(NULL, 2, 2021, NULL),
(NULL, 3, 2021, NULL);

-- Inserir dados na tabela equipa_torneio(id, id_equipa, id_torneio_epoca, grupo, posicaofinal)
INSERT INTO equipa_torneio VALUES
(NULL, 1, 1, 'A'),
(NULL, 2, 1, 'A'),
(NULL, 3, 1, 'A'),
(NULL, 4, 1, 'B'),
(NULL, 5, 1, 'B'),
(NULL, 6, 1, 'B'),
(NULL, 7, 1, 'C'),
(NULL, 8, 1, 'C'),
(NULL, 9, 1, 'C'),
(NULL, 10, 1, 'D'),
(NULL, 11, 1, 'D'),
(NULL, 12, 1, 'D');

-- Inserir dados na tabela arbitro(id, nome, id_cidade, dtaNascimento)
INSERT INTO arbitro VALUES
(NULL, 'Gustavo Fernandes Correia', 26,'1991-12-30'),
(NULL, 'Hugo Filipe Ferreira Campos Moreira Miguel', 1,'1977-01-16'),
(NULL, 'David Rafael Oliveira da Silva', 1,'1993-07-18'),
(NULL, 'Manuel Mota da Silva', 4,'1977-03-31'),
(NULL, 'Vítor Jorge Fernandes Ferreira', 32,'1988-07-04'),
(NULL, 'Manuel António Rodrigues Oliveira', 1,'1977-10-24'),
(NULL, 'Fábio Melo', 6,'1990-08-02');

-- Inserir dados na tabela jogo(id, id_equipa_casa, id_equipa_fora, golos_casa, golos_fora, fase_jogo, id_torneio_epoca, jogo_data, id_estadio, id_arbitro, audiencia, id_jogador_da_partida)
INSERT INTO jogo VALUES
(NULL, 1, 3, 3, 0, 'G', 1, '2021-12-15 19:00:00', 3, 1, 200000, 8, 'Concluido'),
(NULL, 3, 2, 0, 2, 'G', 1, '2021-09-21 20:15:00', 1, 1, 110000, 14, 'Concluido'),
(NULL, 2, 1, 3, 3, 'G', 1, '2021-10-27 19:30:00', 2, 2, 233000, 17, 'Concluido'),
(NULL, 5, 6, 5, 0, 'G', 1, '2021-09-22 21:15:00', 4, 3, 163000, 20, 'Concluido'),
(NULL, 4, 5, 2, 1, 'G', 1, '2021-10-26 21:15:00', 5, 4, 173320, 21, 'Concluido'),
(NULL, 6, 4, 0, 1, 'G', 1, '2021-12-14 20:15:00', 6, 4, 127420, 21, 'Concluido'),
(NULL, 8, 7, 1, 2, 'G', 1, '2021-09-23 20:15:00', 7, 5, 74329, 27, 'Concluido'),
(NULL, 9, 8, 0, 0, 'G', 1, '2021-10-28 20:15:00', 8, 5, 10432, NULL, 'Concluido'),
(NULL, 7, 9, 5, 1, 'G', 1, '2021-12-16 20:15:00', 9, 6, 50323, 28, 'Concluido'),
(NULL, 12, 10, 2, 2, 'G', 1, '2021-09-22 19:00:00', 10, 7, 43203, 30, 'Concluido'),
(NULL, 10, 11, 3, 1, 'G', 1, '2021-10-26 19:00:00', 11, 6, 93201, NULL, 'Concluido'),
(NULL, 11, 12, 1, 0, 'G', 1, '2021-12-15 21:00:00', 12, 3, 73219, NULL, 'Concluido'),
(NULL, 10, 4, 2, 1, 'S', 1, '2022-01-26 19:45:00', 13, 3, 159023, 32, 'Concluido'),
(NULL, 1, 7, 2, 1, 'S', 1, '2022-01-25 19:45:00', 13, 7, 168923, 6, 'Concluido'),
(NULL, 1, 4, 1, 2, 'F', 1, '2022-01-29 19:45:00', 13, 4, 530213, 32, 'Concluido');

-- Inserir dados na tabela jogador_jogo_detalhes(id, id_jogador, id_jogo, nota, minutos, golos, assistencias, auto_golos, golos_penalti, penalti_defendidos, remates, remates_baliza, cartões_amarelos, cartoes_vermelhos)
INSERT INTO jogador_jogo_detalhes VALUES
(NULL, 8, 1, 8, 45, 2, 0, 0, 1, 0, 13, 4, 0, 0),
(NULL, 13, 1, 6, 45, 1, 0, 0, 0, 0, 11, 2, 0, 0),
(NULL, 14, 2, 7, 81, 2, 0, 0, 0, 0, 7, 2, 0, 0),
(NULL, 15, 2, 7, 90, 0, 1, 0, 0, 0, 3, 1, 0, 0),
(NULL, 18, 3, 8, 73, 3, 1, 0, 0, 0, 3, 1, 0, 0),
(NULL, 17, 3, 8, 72, 0, 0, 0, 0, 0, 3, 1, 0, 0),
(NULL, 19, 3, 6, 90, 3, 1, 0, 0, 0, 3, 1, 0, 0),
(NULL, 20, 4, 8, 75, 1, 1, 0, 0, 0, 6, 2, 1, 0),
(NULL, 21, 5, 7, 76, 1, 0, 0, 0, 0, 4, 2, 1, 0),
(NULL, 22, 5, 6, 69, 1, 0, 0, 0, 0, 3, 1, 0, 0),
(NULL, 23, 5, 6, 45, 1, 0, 0, 0, 0, 1, 1, 0, 0),
(NULL, 24, 6, 7, 90, 1, 0, 0, 0, 0, 6, 1, 0, 0),
(NULL, 25, 6, 5, 73, 0, 0, 0, 0, 0, 1, 0, 2, 1),
(NULL, 26, 6, 7, 90, 0, 1, 0, 0, 0, 6, 1, 0, 0),
(NULL, 27, 7, 8, 90, 0, 2, 0, 0, 0, 9, 1, 1, 0),
(NULL, 28, 9, 8, 71, 2, 1, 0, 0, 0, 6, 1, 0, 0),
(NULL, 29, 10, 3, 67, 0, 0, 0, 0, 0, 0, 0, 2, 1),
(NULL, 30, 10, 7, 70, 1, 0, 0, 0, 0, 3, 1, 0, 0),
(NULL, 31, 11, 6, 25, 0, 1, 0, 0, 0, 6, 3, 0, 0),
(NULL, 32, 13, 7, 90, 0, 0, 0, 0, 0, 4, 1, 0, 0),
(NULL, 33, 13, 6, 81, 1, 0, 0, 1, 0, 8, 3, 0, 0),
(NULL, 34, 13, 5, 90, 0, 0, 1, 0, 0, 1, 0, 0, 0),
(NULL, 35, 13, 7, 90, 1, 0, 0, 0, 0, 9, 6, 0, 0),
(NULL, 7, 14, 7, 90, 0, 0, 0, 0, 0, 6, 2, 0, 0),
(NULL, 28, 14, 7, 90, 1, 0, 0, 1, 0, 10, 6, 0, 0),
(NULL, 10, 15, 7, 83, 1, 0, 0, 0, 0, 8, 6, 1, 0),
(NULL, 36, 15, 7, 90, 1, 0, 0, 0, 0, 4, 2, 0, 0),
(NULL, 32, 15, 8, 88, 1, 0, 1, 0, 0, 12, 6, 0, 0);