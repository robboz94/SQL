#	Cw 7:
#	1.Utwórz nową bazę danych cinema
USE cinema;
#	2.Utwórz tabele actor i movie. Im więcej pól opisujących aktora i film dodasz tym lepiej.
#	Pamiętaj o utworzeniu relacji pomiędzy tabelami. Jaki rodzaj relacji zastosujesz?
CREATE TABLE actor(
ID_actor INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(128),
last_name VARCHAR(128),
age INT,
nationality VARCHAR(128),
sex VARCHAR(128),
PRIMARY KEY (ID_actor)
);


CREATE TABLE movie(
ID_movie INT NOT NULL AUTO_INCREMENT,
title VARCHAR(128),
genre VARCHAR(128),
release_date DATE,
PRIMARY KEY (ID_movie)
);
#	3.Do tabeli actor dodaj swojego ulubionego aktora.
INSERT INTO actor (first_name,last_name,age,nationality,sex) VALUES ('Tom','Hanks',63,'USA','male');

#	4.Do tabeli movie dodaj trzy filmy, w których zagrał Twój ulubiony aktor.
INSERT INTO movie (title,genre,release_date) VALUES('ZIELONA MILA','Dramat','1999-12-06');
INSERT INTO movie (title,genre,release_date) VALUES('FORREST GUMP','Komedia','1994-06-23');
INSERT INTO movie (title,genre,release_date) VALUES('SZEREGOWIEC RYAN','Wojenny','1998-07-24');

CREATE TABLE movie_cast_table (
movie_id INT ,
actor_id INT ,
FOREIGN KEY (actor_id) REFERENCES actor (ID_actor),
FOREIGN KEY (movie_id) REFERENCES movie (ID_movie)
);
#	5.Za pomocą jednego polecania select wypisz informacje o filmach, w których zagrał Twój ulubiony aktor.

#	dodawanie aktora do filmu - w tym przypadku:	TOM HANKS do ZIELONA MILA
INSERT INTO movie_cast_table VALUES (1,1);
#	wyswietlenie filmu gdzie gra aktor
SELECT movie.*
FROM actor
JOIN movie
JOIN movie_cast_table on movie_cast_table.actor_id = actor.ID_actor
AND movie_cast_table.movie_id = movie.ID_movie 
WHERE actor.last_name = 'Hanks';

#	6.Dodaj kolejny dowolny film (w którym Twój ulubiony aktor nie grał) oraz aktora który zagrał w tym filmie.
	#dodanie filmu
INSERT INTO movie (title,genre,release_date) VALUES('MATRIX','Science Fiction','1999-03-24');	
	#dodanie aktora
INSERT INTO actor (first_name,last_name,age,nationality,sex) VALUES ('Keanu','Reeves',55,'LBA','male');
	
#	7.Upewnij się, że Twoje polecenie z podpunktu 5) wciąż działa prawidłowo.

#	8.Zastanów się jaki inny aktor zagrał w filmach, które wypisałeś w podpunkcie 4). Do każdego filmu utworzonego w podpunkcie 4) dodaj co najmniej jednego nowego aktora który zagrał w tym filmie. Czy masz możliwość powiązania nowego aktora z istniejącym filmem?

#	9.Wypisz (instrukcja select) tytuły filmów w których zagrał więcej niż jeden aktor.









