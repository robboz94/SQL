#	Baza danych Terminal Kontenerowy
#	kontener, wlasciciele
USE container_terminal;
CREATE TABLE IF NOT EXISTS container_numbers(
id int	not null,
prefix VARCHAR(6),
last_digit VARCHAR(1),
size_in_feet INT,
PRIMARY KEY(prefix)
);

CREATE TABLE IF NOT EXISTS container_owners(
id int not null,
full_name VARCHAR(50),
hq_address VARCHAR(150),
short_name VARCHAR(4),
PRIMARY KEY (short_name)
);







