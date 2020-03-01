CREATE TABLE selected_book(
title VARCHAR (128),
author VARCHAR (128),
published DATE,
isbn VARCHAR(32),
page_count INT(255),
publisher VARCHAR(128),
price FLOAT);

DESC selected_book;


INSERT INTO selected_book 
SELECT title,
author,  
published ,
isbn ,
page_count, 
publisher, 
price
FROM book
WHERE category = 'Bazy Danych';

SELECT * FROM selected_book;
