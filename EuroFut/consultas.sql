/*
TeSP_PSI_2022_CDBD
Sistema de Informação para a Gestão de Torneios de Futebol da Europa
Eurofut
António Russo Figueiras, estudante n.º 2211864
Gilberto Gil Carvalho, estudante n.º 2211878
*/

Use eurofut;
-- Consultas à Base de Dados

-- Consultas com filtragens de dados + junções + ordenação + formatação das colunas:

-- Golos feitos por cada jogador?
-- Jogos concluidos e cancelados?

-- Mostra os estádios com mais de 9000 de capacidade e ordenado de forma decrescente pela capacidade dos estádios
Select es.nome as Nome_estadio,es.capacidade as Capacidade_estadio,es.id_cidade as Cidade from estadio es Inner Join cidade c On(es.id_cidade=c.id_cidade) WHERE es.capacidade>9000 ORDER by es.capacidade DESC;

-- Cargo de cada treinador
-- Select t.nome as Nome_treinador, IFNULL(tp.qualificacao as Qualificacao,"Adjunto"), t.dtaNascimento as dtaNascimento from treinador t Inner Join treinador_principal tp On(t.id_treinador=tp.id_treinador) ORDER BY t.dtaNascimento DESC;

-- Valor dos jogadores no mercado por ordem de equipa e valor decrescente
Select j.nome as Jogador, j.valor as Valor, eq.nome_equipa as Equipa from jogador j Inner Join equipa eq On(j.id_equipa=eq.id_equipa) ORDER BY eq.nome_equipa, j.valor DESC;

-- Informações acerca dos jogos do torneio
Select * from jogo j Inner Join jogo_detalhes jd On (j.id_jogo = jd.id_jogo) where j.id_torneio_epoca=1;

-- Informaçoes acerca das equipas do campeonato
Select e.id_equipa,e.nome_equipa,e.abreviatura,e.bandeira,e.id_cidade,c.nome,p.id_pais,p.nome,p.abreviatura from equipa e Inner Join cidade c On (e.id_cidade=c.id_cidade) Inner Join pais p On (c.id_pais=p.id_pais) Inner Join equipa_torneio t On (e.id_equipa=t.id_equipa) where t.id_torneio_epoca=1;

-- Vencedor do torneio 

Select distinct vencedor,torneio from torneio_epoca group by torneio order by 1 asc; 

-- Consultas usando sub-consultas:

-- Jogadores com mais penaltis defendidos
Select jd.id_jogador,j.nome,jd.remates from jogador j Inner Join jogador_jogo_detalhes jd On (j.id_jogador=jd.id_jogador) where remates>(Select AVG(remates) from jogador_jogo_detalhes);

-- Jogador com mais assistencias

Select nome as Nome_Jogador,p.desc_posicao,assistencias from jogador j Inner Join jogador_jogo_detalhes jd On (j.id_jogador=jd.id_jogador) Inner Join posicao p On(j.id_posicao=p.id_posicao) where assistencias>(Select MAX(assistencias) from jogador_jogo_detalhes);

-- Consultas usando grupos:
-- Numero de jogadores das equipas
-- Numero de Vitorias por equipa do campeonato
Select Nome_da_equipa as nome_equipa,Count(resultado) as Numero_de_Vitorias from jogo_detalhes where resultado='V'group by Nome_da_equipa order by 1 asc;

-- Equipa com vitorias de cada torneio

Select vencedor as Equipa,torneio as Torneio,Count(vencedor) as Vitorias from torneio_epoca group by torneio order by 1 asc;