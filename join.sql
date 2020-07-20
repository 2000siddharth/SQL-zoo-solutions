1.
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'
  
2.
SELECT id,stadium,team1,team2
  FROM game 
where id=1012

3.
SELECT player,teamid,stadium,mdate
  FROM game JOIN goal ON (id=matchid) where teamid = 'GER'

4.
select team1, team2, player from game
Join goal on (id=matchid) where player like 'Mario%'

5.
SELECT player, teamid,coach, gtime
  FROM goal 
join eteam on (teamid=id)
 WHERE gtime<=10
 
6.
select mdate, teamname from game
Join eteam on (team1=eteam.id)
where coach='Fernando Santos'

7.
select player from goal join game on (id=matchid)
where stadium = 'National Stadium, Warsaw'

8.
SELECT distinct(player)
  FROM game JOIN goal ON matchid = id 
    WHERE (team1 = 'GER' OR team2 = 'GER') and teamid <> 'GER'

9.
SELECT teamname, count(*) as total
  FROM eteam JOIN goal ON id=teamid
 Group BY teamname
order by (total) DESC

10.
SELECT stadium, count(*) as total
  FROM game JOIN goal ON id=matchid
Group BY stadium
Order by (total) DESC

11.
SELECT matchid, mdate, COUNT(*) FROM goal JOIN game ON id = matchid WHERE (team1 = 'GER' OR team2 = 'GER') AND teamid = 'GER' GROUP BY matchid;

12.
