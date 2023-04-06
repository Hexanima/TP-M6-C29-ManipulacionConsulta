use movies_db;

/* Micro desafio 1 */

/* 1 */
insert into genres (id, name, ranking, active) values (default, "Investigación", 13, 1);

/* 2 */
select id from genres where name = "Investigación";
update genres set name = "Investigación Científica" where id = 13;

/* 3 */
select id from genres where name = "Investigación Científica";
delete from genres where id = 13;

/* 4 */
select * from movies;

/* 5 */
select first_name, last_name, rating from actors;

/* 6 */
select title as "Titulo" from series;



/* Micro desafio 2 */

/* 1 */

select first_name, last_name from actors where rating >	7.5;

/* 2 */

select title, rating, awards from movies where rating > 7.5 and awards > 2;

/* 3 */

select title, rating from movies order by rating;
/*Sin especificar es en order ascendente por defecto*/



/* Micro desafio 3 */

/* 1 */

select title from movies limit 3;

/* 2 */

select title, rating from movies order by rating desc limit 5;
/* Ordeno en descendiente para mostrar de mayor rating primero*/

/* 3 */

select title, rating from movies order by rating desc limit 5 offset 5;

/* 4 */

select * from actors limit 10;

/* 4 a */

select * from actors limit 10 offset 20;
/* Asumiendo que una pagina son 10 actores, osea de id 1 a 10, podemos asumir que la pagina 3 son id 21 a 30*/



/* Micro desafio 4 */

/* 1 */

select title, rating from movies where title like "%Harry Potter%";

/* 2 */

select * from actors where first_name like "Sam%";

/* 3 */

select * from movies where year (release_date) between 2004 and 2008;