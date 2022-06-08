/*
TeSP_PSI_2022_CDBD
Sistema de Informação para a Gestão de Torneios de Futebol da Europa
Eurofut
António Russo Figueiras, estudante n.º 2211864
Gilberto Gil Carvalho, estudante n.º 2120013
*/

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
(29, 'Gondomar', 1);

-- Inserir dados na tabela equipa
INSERT INTO equipa VALUES 
(1, 'Benfica', 'SLB', 1, LOAD_FILE('c:\\wamp64\\tmp\\benfica.png')),
(2, 'Vitória SC', 'VSC', 2, LOAD_FILE('c:\\wamp64\\tmp\\vitoriasc.png')),
(3, 'SC Covilhã', 'SCC', 3, LOAD_FILE('c:\\wamp64\\tmp\\sccovilha.png')),
(4, 'Sporting', 'SCP', 1, LOAD_FILE('c:\\wamp64\\tmp\\sporting.png')),
(5, 'FC Famalicão', 'FCF', 4, LOAD_FILE('c:\\wamp64\\tmp\\fcfamalicao.png')),
(6, 'FC Penafiel', 'FCP', 5, LOAD_FILE('c:\\wamp64\\tmp\\fcpenafiel.png')),
(7, 'Boavista', 'BFC', 6, LOAD_FILE('c:\\wamp64\\tmp\\boavista.png')),
(8, 'Paços de Ferreira', 'FCPF', 7, LOAD_FILE('c:\\wamp64\\tmp\\pacosferreira.png')),
(9, 'SC Braga', 'SCB', 8, LOAD_FILE('c:\\wamp64\\tmp\\scbraga.png')),
(10, 'Santa Clara', 'CDSC', 9, LOAD_FILE('c:\\wamp64\\tmp\\santaclara.png')),
(11, 'FC Porto', 'FCP', 6, LOAD_FILE('c:\\wamp64\\tmp\\fcporto.png')),
(12, 'Rio Ave', 'RAFC', 10, LOAD_FILE('c:\\wamp64\\tmp\\rioave.png'));

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
 (12,'Estádio do Dragão', '50033', 11, 6);



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

-- Inserir dados na tabela jogador (id, nome, numero, id_posicao, valor, dtaNascimento, altura, id_cidade, id_equipa)
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
(NULL, 'Ivo Tiago dos Santos Rodrigues', 7, 'EE', 1500000, '1995-03-30', 180, 29, 5, 'DIR');

-- Inserir dados na tabela torneio
INSERT INTO torneio VALUES 
(NULL, 'Allianz Cup', 1);

-- Inserir dados na tabela torneio_epoca
INSERT INTO torneio_epoca VALUES 
(NULL, 1, 2021, NULL);

-- Inserir dados na tabela equipa_torneio(id, id_equipa, id_torneio_epoca, grupo, posicaofinal)
INSERT INTO equipa_torneio VALUES
(NULL, 1, 1, 'A', 2),
(NULL, 2, 1, 'A', 4),
(NULL, 3, 1, 'A', 4),
(NULL, 4, 1, 'B', 1),
(NULL, 5, 1, 'B', 4),
(NULL, 6, 1, 'B', 4);

-- Inserir dados na tabela arbitro(id, nome, id_cidade, dtaNascimento)
INSERT INTO arbitro VALUES
(NULL, 'Gustavo Fernandes Correia', 26,'1991-12-30'),
(NULL, 'Hugo Filipe Ferreira Campos Moreira Miguel', 1,'1977-01-16'),
(NULL, 'David Rafael Oliveira da Silva', 1,'1993-07-18');

-- Inserir dados na tabela jogo(id, id_equipa_casa, id_equipa_fora, fase_jogo, id_torneio_epoca, jogo_data, id_estadio, id_arbitro, audiencia, id_jogador_da_partida)
INSERT INTO jogo VALUES
(NULL, 1, 3, 'G', 1, '2021-12-15 19:00:00', 3, 1, 200000, 8, 'Concluido'),
(NULL, 3, 2, 'G', 1, '2021-09-21 20:15:00', 1, 1, 110000, 14, 'Concluido'),
(NULL, 2, 1, 'G', 1, '2021-10-27 19:30:00', 2, 2, 233000, 17, 'Concluido'),
(NULL, 5, 6, 'G', 1, '2021-09-22 21:15:00', 4, 3, 163000, 20, 'Concluido');

-- Inserir dados na tabela jogo_detalhes(id, id_jogo, id_equipa, golos, resultado, id_capitao)
INSERT INTO jogo_detalhes VALUES
(NULL, 1, 1, 3, 'V', 1),
(NULL, 1, 3, 0, 'D', 12),
(NULL, 2, 3, 0, 'D', 16),
(NULL, 2, 2, 2, 'V', 17),
(NULL, 3, 2, 3, 'E', 17),
(NULL, 3, 1, 3, 'E', 18),
(NULL, 4, 5, 5, 'V', 20),
(NULL, 4, 6, 0, 'D', 18);

-- Inserir dados na tabela jogador_jogo_detalhes(id, id_jogador, id_jogo, nota, minutos, golos, auto_golos, golos_penalti, penalti_defendidos, assistencias, remates, remates_baliza, cartões_amarelos, cartoes_vermelhos)
INSERT INTO jogador_jogo_detalhes VALUES
(NULL, 8, 1, 8, 45, 2, 0, 1, 0, 0, 13, 4, 0, 0),
(NULL, 13, 1, 6, 45, 1, 0, 0, 0, 0, 11, 2, 0, 0),
(NULL, 14, 2, 7, 81, 2, 0, 0, 0, 0, 7, 2, 0, 0),
(NULL, 15, 2, 7, 90, 0, 1, 0, 0, 0, 3, 1, 0, 0),
(NULL, 18, 3, 8, 73, 3, 1, 0, 0, 0, 3, 1, 0, 0),
(NULL, 17, 3, 8, 72, 0, 0, 0, 0, 0, 3, 1, 0, 0),
(NULL, 19, 3, 6, 90, 3, 1, 0, 0, 0, 3, 1, 0, 0),
(NULL, 20, 4, 8, 75, 1, 1, 0, 0, 0, 6, 2, 1, 0);