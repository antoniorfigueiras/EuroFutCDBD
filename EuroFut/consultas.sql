/*
TeSP_PSI_2022_CDBD
Sistema de Informação para a Gestão de Torneios de Futebol da Europa
Eurofut
António Russo Figueiras, estudante n.º 2211864
Gilberto Gil Carvalho, estudante n.º 2120013
*/

/*SELECT equipa,
    count(*) PJ, 
    count(case when fthg > ftag then 1 end) W, 
    count(case when fthg = ftag then 1 end) D, 
    count(case when fthg < ftag then 1 end) L,
    sum(fthg) GF,
    sum(ftag) GA,
    sum(fthg) - sum(ftag) GD,
    sum(case when fthg > ftag then 3 else 0 end + case when fthg = ftag then 1 else 0 end) Pts
    from (
    select id_torneio_epoca, hometeam team, fthg, ftag, hthg, htag from Matches 
      union all
    select id_torneio_epoca, awayteam team, ftag, fthg, htag, hthg from Matches 
    ) a
    where id_torneio_epoca=1
group by team
order by Pts desc*/

SELECT COUNT(DISTINCT id_equipa) = 
FROM equipa_torneio;