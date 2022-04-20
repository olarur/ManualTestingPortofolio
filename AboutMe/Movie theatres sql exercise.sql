create database cinema;
use cinema;
create table Movies (
   Code int primary key not null auto_increment,
   Title text not null,
   Rating text 
 );
 create table  MovieTheaters (
   Code int primary key not null,
   Name text not null,
   Movie int,  
   constraint fk_Movies_Code foreign key(Movie) 
   references Movies(Code)
 );

INSERT INTO Movies(Code,Title,Rating) VALUES(9,'Citizen King','G');
INSERT INTO Movies(Code,Title,Rating) VALUES(1,'Citizen Kane','PG');
INSERT INTO Movies(Code,Title,Rating) VALUES(2,'Singin'' in the Rain','G');
INSERT INTO Movies(Code,Title,Rating) VALUES(3,'The Wizard of Oz','G');
INSERT INTO Movies(Code,Title,Rating) VALUES(4,'The Quiet Man',NULL);
INSERT INTO Movies(Code,Title,Rating) VALUES(5,'North by Northwest',NULL);
INSERT INTO Movies(Code,Title,Rating) VALUES(6,'The Last Tango in Paris','NC-17');
INSERT INTO Movies(Code,Title,Rating) VALUES(7,'Some Like it Hot','PG-13');
INSERT INTO Movies(Code,Title,Rating) VALUES(8,'A Night at the Opera',NULL);

INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(1,'Odeon',5);
INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(2,'Imperial',1);
INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(3,'Majestic',NULL);
INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(4,'Royale',6);
INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(5,'Paraiso',3);
INSERT INTO MovieTheaters(Code,Name,Movie) VALUES(6,'Nickelodeon',NULL);

-- task 1
 select title from movies;
 
 -- task 2
 select distinct rating from movies;
 
 -- task 3
 select * from movies where rating is null;
 
-- task 4
 select * from movietheaters where movie is null;
 
-- task 5
select * from movietheaters left join movies on movietheaters.movie = movies.code;

-- task 6  
select * from movietheaters right join movies on movietheaters.movie = movies.code;

-- task 7 
select title from movies
   where code not in (select movie from MovieTheaters where movie is not null);
   
-- task 8
select * from movies;
insert into movies(title, rating) values ('One, Two, Three', NULL);   


-- task 9
update Movies set rating='G' where rating is null;
select* from movies;

-- task 10
delete from movietheaters where movie in (select code from movies where rating = 'NC-17'); 
select* from movies;