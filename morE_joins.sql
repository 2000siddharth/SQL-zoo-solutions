1.
SELECT id, title
 FROM movie
 WHERE yr=1962
2.
select yr from movie where title = 'Citizen Kane'

3.
select id, title, yr from movie where title like '%Star Trek%'
order by yr

4.
select id from actor where name='Glenn Close' 

5.
select id from movie where title= 'Casablanca'

6.
select name from actor 
join casting on actorid=id
where movieid=27

7.
select name from actor 
join casting on actorid=id
where movieid = (select id from movie where title = 'Alien')

8.
select title from movie
join casting on movieid=id
where actorid = (select id from actor where name = 'Harrison Ford')

9.
select title from movie
join casting on movieid=id
where actorid = (select id from actor where name = 'Harrison Ford')
and ord <> 1

10.
select title, name from (actor join casting on id = actorid) join movie ON movie.id = movieid
where yr=1962 and ord=1 

11.
SELECT yr,COUNT(title) as total FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Harrison Ford'
GROUP BY yr
HAVING COUNT(title) > 1

13.
select name from (actor join casting 
on actorid=id) JOIN movie ON movieid = movie.id 
where ord=1 group by name having count(*) >= 15

14.
SELECT title, COUNT(actorid) FROM (movie JOIN casting ON movieid = movie.id)  WHERE yr = 1978 GROUP BY title ORDER BY COUNT(actorid) DESC, title;

15.
SELECT name FROM (actor JOIN casting ON actorid = actor.id) JOIN movie ON movieid = movie.id 
WHERE movieid IN (SELECT movieid FROM  (actor JOIN casting ON actorid = actor.id) 
JOIN movie ON movieid = movie.id WHERE name = 'Art Garfunkel') AND name != 'Art Garfunkel';
