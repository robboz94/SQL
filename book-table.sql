CREATE TABLE books ( 
title VARCHAR (128),
author VARCHAR (128),
published DATE,
isbn VARCHAR(32),
category VARCHAR(128),
page_count INT(80000),
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






