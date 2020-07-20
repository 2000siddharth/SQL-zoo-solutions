1. 
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
2.
select name from world where continent = 'Europe' and gdp/population > (Select gdp/population from world where name = 'United Kingdom')

3. 
select name, continent from world 
where continent in (select continent from world where name in ('Argentina', 'Australia')) order by name

4.
select name, population from world where
population > (select population from world where name='Canada') and
population < (select population from world where name='Poland')

5.
select name, CONCAT(cast(round(population/(select population from world where name='Germany')*100,0) as decimal(10)),'%') from world where continent='Europe'

6.
select name from world where
continent<>'Europe' and gdp > (select max(gdp) from world where continent='Europe')

7.
SELECT continent, name, area FROM world x
  WHERE area = 
    (SELECT max(area) FROM world y
        WHERE y.continent=x.continent
          AND area>0)
8.
select continent, name from world x where
name <= ALL(select name from world y where y.continent = x.continent)

9.
select name,continent,population from world
where continent in (select continent from world x where 25000000 >= (select max(population) from world y where y.continent = x.continent))

10.
SELECT name, continent FROM world x
  WHERE population > ALL(SELECT 3*population FROM world y WHERE x.continent = y.continent AND x.name <> y.name)


