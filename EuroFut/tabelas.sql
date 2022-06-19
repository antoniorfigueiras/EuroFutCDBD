/*
TeSP_PSI_2022_CDBD
Sistema de Informação para a Gestão de Torneios de Futebol da Europa
Eurofut
António Russo Figueiras, estudante n.º 2211864
Gilberto Gil Carvalho, estudante n.º 2211878
*/

DROP DATABASE IF EXISTS EuroFut;
CREATE DATABASE EuroFut;
USE EuroFut;

-- Criar a tabela país
CREATE TABLE pais(
	id_pais			INT UNSIGNED AUTO_INCREMENT,
	nome			VARCHAR(30) NOT NULL UNIQUE,
    abreviatura			VARCHAR(4) NOT NULL,
    CONSTRAINT pk_pais PRIMARY KEY(id_pais)
) ENGINE=InnoDB;

-- Criar a tabela cidade
CREATE TABLE cidade(
	id_cidade		INT UNSIGNED AUTO_INCREMENT,
	nome			VARCHAR(50) NOT NULL UNIQUE,
    id_pais			INT UNSIGNED,
    CONSTRAINT pk_cidade PRIMARY KEY(id_cidade),
    CONSTRAINT uk_cidade_nome UNIQUE KEY (nome),
    CONSTRAINT fk_cidade_pais FOREIGN KEY(id_pais) REFERENCES pais(id_pais)
) ENGINE=InnoDB;

-- Criar a tabela equipa
CREATE TABLE equipa(
	id_equipa			INT UNSIGNED AUTO_INCREMENT,
	nome_equipa			VARCHAR(50) NOT NULL,
    abreviatura			VARCHAR(4) NOT NULL,
    id_cidade			INT UNSIGNED NOT NULL,
    bandeira			BLOB,
    ano_fundada			YEAR,
    CONSTRAINT pk_equipas PRIMARY KEY(id_equipa),
    CONSTRAINT fk_equipa_cidade FOREIGN KEY(id_cidade) REFERENCES cidade(id_cidade)
) ENGINE=InnoDB;

-- Criar a tabela posicao
CREATE TABLE  posicao(
	id_posicao				VARCHAR(2),
	desc_posicao			VARCHAR(30) NOT NULL,
    CONSTRAINT pk_posicao PRIMARY KEY(id_posicao)
) ENGINE=InnoDB;

-- Criar a tabela jogador
CREATE TABLE jogador(
	id_jogador				INT UNSIGNED AUTO_INCREMENT,
	nome					VARCHAR(150) NOT NULL,
    numero					INT(2) UNSIGNED,
    id_posicao				VARCHAR(2),
    valor					INT UNSIGNED,
    dtaNascimento			DATE,
    altura					INT(3) UNSIGNED,
    id_cidade				INT UNSIGNED,
    id_equipa				INT	UNSIGNED,
    pe_preferido            VARCHAR(3), -- ESQ-PÉ ESQUERDO, DIR-PÉ DIREITO
    CONSTRAINT pk_jogador PRIMARY KEY(id_jogador),
    CONSTRAINT fk_jogador_posicao FOREIGN KEY(id_posicao) REFERENCES posicao(id_posicao),
    CONSTRAINT fk_jogador_cidade FOREIGN KEY(id_cidade) REFERENCES cidade(id_cidade),
	CONSTRAINT fk_jogador_equipa FOREIGN KEY(id_equipa) REFERENCES equipa(id_equipa)
) ENGINE=InnoDB;

-- Criar a tabela treinador
CREATE TABLE treinador(
	id_treinador	INT	UNSIGNED AUTO_INCREMENT,
    nome			VARCHAR(150) NOT NULL,
    dtaNascimento	DATE,
    id_cidade       INT UNSIGNED,
    id_equipa       INT UNSIGNED,
    CONSTRAINT pk_treinador	PRIMARY KEY(id_treinador),
    CONSTRAINT fk_treinador_cidade FOREIGN KEY(id_cidade) REFERENCES cidade(id_cidade),
    CONSTRAINT fk_treinador_equipa FOREIGN KEY(id_equipa) REFERENCES equipa(id_equipa)
) ENGINE=InnoDB;

-- Criar a tabela treinador_principal
CREATE TABLE treinador_principal(
    id_treinador    INT UNSIGNED,
    qualificacao    ENUM('Pro','A', 'B'),
    passado_jogador ENUM('S','N'),
    CONSTRAINT fk_treinador_principal	FOREIGN KEY(id_treinador) REFERENCES treinador(id_treinador)
) ENGINE=InnoDB;

-- Criar a tabela treinador_adjunto
CREATE TABLE treinador_adjunto(
    id_treinador        INT UNSIGNED,
    responsabilidade	VARCHAR(150),
    CONSTRAINT fk_treinador_adjunto	FOREIGN KEY(id_treinador) REFERENCES treinador(id_treinador)
) ENGINE=InnoDB;

-- Criar a tabela arbitro
CREATE TABLE  arbitro(
	id_arbitro		INT UNSIGNED AUTO_INCREMENT,
	nome			VARCHAR(150) NOT NULL,
    id_cidade		INT UNSIGNED,
    dtaNascimento   DATE,
    CONSTRAINT pk_arbitro PRIMARY KEY(id_arbitro),
    CONSTRAINT fk_arbitro_naturalidade FOREIGN KEY(id_cidade) REFERENCES cidade(id_cidade)
) ENGINE=InnoDB;

-- Criar a tabela estadio
CREATE TABLE  estadio(
	id_estadio				INT UNSIGNED AUTO_INCREMENT,
	nome					VARCHAR(150) NOT NULL,
    capacidade				INT UNSIGNED,
    id_equipa_estadio		INT UNSIGNED,
    id_cidade				INT UNSIGNED,
    CONSTRAINT pk_estadio PRIMARY KEY(id_estadio),
	CONSTRAINT fk_estadio_cidade FOREIGN KEY(id_cidade) REFERENCES cidade(id_cidade),
	CONSTRAINT fk_estadio_equipa FOREIGN KEY(id_equipa_estadio) REFERENCES equipa(id_equipa),
    CONSTRAINT uk_estadio_equipa UNIQUE KEY(id_equipa_estadio)
) ENGINE=InnoDB;

-- Criar a tabela torneio
CREATE TABLE  torneio(
	id_torneio		INT UNSIGNED AUTO_INCREMENT,
	nome			VARCHAR(150) NOT NULL,
    pais			INT UNSIGNED,
    CONSTRAINT pk_torneio PRIMARY KEY(id_torneio),
    CONSTRAINT fk_torneio_pais FOREIGN KEY (pais) REFERENCES pais(id_pais)
) ENGINE=InnoDB;

-- Criar a tabela torneio-epoca
CREATE TABLE  torneio_epoca(
	id_torneio_epoca		INT UNSIGNED AUTO_INCREMENT,
    torneio					INT UNSIGNED NOT NULL,
    epoca					YEAR(4),
    vencedor				INT UNSIGNED,
    CONSTRAINT pk_torneio_epoca PRIMARY KEY(id_torneio_epoca),
    CONSTRAINT fk_torneioepoca_torneio FOREIGN KEY (torneio) REFERENCES torneio(id_torneio),
    CONSTRAINT fk_torneioepoca_vencedor	FOREIGN KEY (vencedor) REFERENCES equipa(id_equipa)
) ENGINE=InnoDB;

-- Criar a tabela torneio-epoca
CREATE TABLE  equipa_torneio(
	id_equipa_torneio		INT UNSIGNED AUTO_INCREMENT,
    id_equipa				INT UNSIGNED NOT NULL,
	id_torneio_epoca		INT UNSIGNED NOT NULL,
    grupo					VARCHAR(1) NOT NULL,
    CONSTRAINT pk_equipa_torneio PRIMARY KEY(id_equipa_torneio),
    CONSTRAINT fk_equipatorneio_equipa 		FOREIGN KEY (id_equipa) REFERENCES equipa(id_equipa),
    CONSTRAINT fk_equipatorneio_torneio_epoca	FOREIGN KEY (id_torneio_epoca) REFERENCES torneio_epoca(id_torneio_epoca)
) ENGINE=InnoDB;

-- Criar a tabela jogo
CREATE TABLE  jogo(
	id_jogo				INT UNSIGNED AUTO_INCREMENT,
    id_equipa_casa		INT NOT NULL,
    id_equipa_fora		INT NOT NULL,
    golos_equipa_casa	INT NOT NULL,
    golos_equipa_fora	INT NOT NULL,
    fase_jogo			ENUM('G','R','Q','S','F') NOT NULL, /*G-FASE DE GRUPOS, R-RONDA 16, Q-QUARTOS DE FINAL, S-SEMIFINAL, F-FINAL*/
    id_torneio_epoca	INT UNSIGNED NOT NULL,
    jogo_data			DATETIME,
    id_estadio			INT UNSIGNED,
    id_arbitro			INT UNSIGNED,
    audiencia			INT UNSIGNED,
    id_jogador_da_partida		INT UNSIGNED,
    conclusao_jogo		VARCHAR(20), /*Concluido/Cancelado/Adiado*/
    CONSTRAINT pk_jogo PRIMARY KEY(id_jogo),
    CONSTRAINT fk_jogo_torneioepoca FOREIGN KEY(id_torneio_epoca) REFERENCES torneio_epoca(id_torneio_epoca),
    CONSTRAINT fk_jogo_estadio FOREIGN KEY(id_estadio) REFERENCES estadio(id_estadio),
    CONSTRAINT fk_jogo_jdpartida	FOREIGN KEY(id_jogador_da_partida) REFERENCES jogador(id_jogador)
) ENGINE=InnoDB;

-- Criar a tabela jogador_jogo_detalhes
CREATE TABLE jogador_jogo_detalhes(
    id_jogador_jogo_detalhes    INT UNSIGNED AUTO_INCREMENT,
    id_jogador                  INT UNSIGNED NOT NULL,
    id_jogo                     INT UNSIGNED NOT NULL,
    nota                        INT UNSIGNED,
    minutos_jogados             INT UNSIGNED,
    golos                       INT UNSIGNED,
    assistencias                INT UNSIGNED,
    auto_golos                  INT UNSIGNED,
    golos_penalti               INT UNSIGNED,
    penalti_defendidos          INT UNSIGNED,
    remates                     INT UNSIGNED,
    remates_baliza              INT UNSIGNED,
    cartoes_amarelos            INT UNSIGNED,
    cartoes_vermelhos           INT UNSIGNED,
    CONSTRAINT pk_jogador_jogo_detalhes PRIMARY KEY(id_jogador_jogo_detalhes),
    CONSTRAINT fk_jogadorjogodetalhes_jogador FOREIGN KEY(id_jogador) REFERENCES jogador(id_jogador),
    CONSTRAINT fk_jogadorjogodetalhes_jogo FOREIGN KEY(id_jogo) REFERENCES jogo(id_jogo)
) ENGINE=InnoDB;