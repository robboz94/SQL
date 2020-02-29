CREATE TABLE books ( 
title VARCHAR (128),
author VARCHAR (128),
published DATE,
isbn VARCHAR(32),
category VARCHAR(128),
page_count INT(255),
publisher VARCHAR(128),
price FLOAT);
SHOW TABLES;
# wyswietlenie tablicy
DESC books;
# zmiana zawartosci tablicy
ALTER TABLE books ADD COLUMN title1 VARCHAR(30);
DESC books;
# usuwanie kolumny
ALTER TABLE books DROP COLUMN title1;
DESC books;
ALTER TABLE books MODIFY COLUMN page_count INT;
ALTER table books MODIFY COLUMN price FLOAT;
INSERT INTO books (title,author,published,isbn,category,page_count,publisher,price)
VALUES (
'Spring w akcji. WydanieIV',
'Craig Walls',
'2018-08-13',
'978-83-283-0849-7',
'Programowanie java',
624,
'HELION',
89.00
);

INSERT INTO books (title,author,published,isbn,category,page_count,publisher,price)
VALUE(
'MySQL. Vademecum profesjonalisty',
'Paul DuBois',
'2014-03-28',
'978-83-246-8146-4',
'Bazy Danych',
1216,
'HELION',
149.90
);

DESC books;
SELECT * FROM books;
# SET SQL_SAFE_UPDATES =0
UPDATE books SET title = 'zmiana' WHERE author = 'author';
INSERT INTO books (
title,
author
) VALUES(
'Nowa ksiazka',
'Autor ABC'
);
SELECT * FROM books;

CREATE TABLE PRZYKLADOWA_TABELA (
KOLUMNA_1 VARCHAR (10) NOT NULL,
KOLUMNA_2 VARCHAR (10) NOT NULL
);

# CW 4

ALTER TABLE books MODIFY COLUMN title VARCHAR(128) NOT NULL;
ALTER TABLE books MODIFY COLUMN author VARCHAR(128) NOT NULL;
ALTER TABLE books MODIFY COLUMN isbn VARCHAR(128) NOT NULL UNIQUE;


ALTER TABLE books ALTER publisher SET DEFAULT 'nieznana';
DESC books;

ALTER TABLE books ADD COLUMN in_stock INT;

ALTER TABLE books MODIFY COLUMN price FLOAT;

SELECT * FROM books WHERE price BETWEEN 50 AND 90;
SELECT * FROM books WHERE isbn IN ('978-83-246-8146-4','978-83-283-0849-7');
SELECT * FROM books WHERE price LIKE 'Spring w akcji, Wydanie I_';

SELECT DISTINCT publisher FROM books;
# LIMIT pozwala wybrac ograniczona liczbe rekordow (poczawszy od)
SELECT publisher FROM books LIMIT 1,2;
#ORDER BY pozwala sortowac wyniki zapytan
SELECT * FROM books ORDER BY author;
SELECT publisher, SUM(price) FROM books GROUP BY publisher;

# funkcje agregujace

SELECT SUM(page_count) AS total_pages FROM books;
SELECT AVG(page_count) FROM books;
SELECT MIN(page_count) FROM books;
SELECT MAX(page_count) FROM books;

#	klauzula HAVING - czesto na rozmowach kwalifikacyjnych!!

SELECT count(*) as count, publisher
FROM books
GROUP BY publisher
HAVING count >1;

#	podzapytania

SELECT * FROM books WHERE price=(SELECT MIN(price) FROM books);
SELECT * FROM books WHERE EXISTS(SELECT * FROM books WHERE price <100);












