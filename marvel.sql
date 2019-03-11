DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  year INT2,
  show_time VARCHAR(255)
);

CREATE TABLE people (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Jennifer Archibald');
INSERT INTO people (name) VALUES ('Katharina Bitzan');
INSERT INTO people (name) VALUES ('Myriam Boran');
INSERT INTO people (name) VALUES ('David Boyle');
INSERT INTO people (name) VALUES ('Alasdair Carstairs');
INSERT INTO people (name) VALUES ('Eric Cross');
INSERT INTO people (name) VALUES ('Amy Edwardson');
INSERT INTO people (name) VALUES ('Jordan Davidson');
INSERT INTO people (name) VALUES ('Stephen Gibson');
INSERT INTO people (name) VALUES ('Mark King');
INSERT INTO people (name) VALUES ('Rory MacGregor');
INSERT INTO people (name) VALUES ('Robert Marshall');
INSERT INTO people (name) VALUES ('Becky Nielsen');
INSERT INTO people (name) VALUES ('Grant Rutherford');
INSERT INTO people (name) VALUES ('Kanokwan Sritawan');
INSERT INTO people (name) VALUES ('Montgomery Stanczak');
INSERT INTO people (name) VALUES ('Lidia Stopinska-Cherek');
INSERT INTO people (name) VALUES ('Ben Svajko/ Barker');
INSERT INTO people (name) VALUES ('Maria Toscano');
INSERT INTO people (name) VALUES ('Annabel Treshansky');
INSERT INTO people (name) VALUES ('Charlie Walker');
INSERT INTO people (name) VALUES ('Jon Zarecki');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '17:30');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '20:40');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '16:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '13:10');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '20:30');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '23:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '23:10');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '18:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '16:10');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '17:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:35');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '15:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '21:35');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '20:40');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '22:45');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '22:40');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '17:40');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '22:00');


SELECT * FROM movies;

SELECT name FROM people;

UPDATE people SET name = 'Mateusz Stanczak' WHERE name = 'Montgomery Stanczak';

SELECT name FROM people;
SELECT name FROM people WHERE name = 'Mateusz Stanczak';

SELECT name FROM people WHERE name = 'Myriam Boran';

DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;

INSERT INTO people (
  name
)
VALUES (
'Colin Farquhar'
);
SELECT name FROM people;

DELETE FROM people WHERE name = 'Jordan Davidson';
SELECT name FROM people;

INSERT INTO movies (
  title,
  year,
  show_time
)
VALUES (
'Avengers: Infinity War',
2018,
'00:00'
);
SELECT * FROM movies;

UPDATE movies SET (
title,
year,
show_time
)
=
(
'Guardians of the Galaxy 2',
2017,
'00:45'
)
WHERE show_time = '22:45';
SELECT * FROM movies;




1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;

id | title | year | show_time
----+-------------------------------------+------+-----------
1 | Iron Man | 2008 | 23:40
2 | The Incredible Hulk | 2008 | 17:30
3 | Iron Man 2 | 2010 | 20:40
4 | Thor | 2011 | 16:30
5 | Captain America: The First Avenger | 2011 | 13:10
6 | Avengers Assemble | 2012 | 20:30
7 | Iron Man 3 | 2013 | 23:05
8 | Thor: The Dark World | 2013 | 23:10
9 | Batman Begins | 2005 | 18:00
10 | Captain America: The Winter Soldier | 2014 | 16:10
11 | Guardians of the Galaxy | 2014 | 17:15
12 | Avengers: Age of Ultron | 2015 | 23:35
13 | Ant-Man | 2015 | 15:00
14 | Captain America: Civil War | 2016 | 21:35
15 | Doctor Strange | 2016 | 20:40
16 | Guardians of the Galaxy 2 | 2017 | 22:45
17 | Spider-Man: Homecoming | 2017 | 22:40
18 | Thor: Ragnarok | 2017 | 17:40
19 | Black Panther | 2018 | 22:00
(19 rows)

2. Return ONLY the name column from the 'people' table.

SELECT name FROM people;

Jennifer Archibald
Katharina Bitzan
Myriam Boran
David Boyle
Alasdair Carstairs
Eric Cross
Amy Edwardson
Jordan Davidson
Stephen Gibson
Mark King
Rory MacGregor
Robert Marshall
Becky Nielsen
Grant Rutherford
Kanokwan Sritawan
Montgomery Stanczak
Lidia Stopinska-Cherek
Ben Svajko/ Barker
Maria Toscano
Annabel Treshansky
Charlie Walker
Jon Zarecki
(22 rows)

3. Oops! Someone at CodeClan got Mateusz's name wrong! Change it to reflect Mateusz' proper name ('Montgomery' should be 'Mateusz').

UPDATE people SET name = 'Mateusz Stanczak' WHERE name = 'Montgomery Stanczak';
SELECT name FROM people; || SELECT name FROM people WHERE name = 'Mateusz Stanczak';

id | name
----+------------------------
1 | Jennifer Archibald
2 | Katharina Bitzan
3 | Myriam Boran
4 | David Boyle
5 | Alasdair Carstairs
6 | Eric Cross
7 | Amy Edwardson
8 | Jordan Davidson
9 | Stephen Gibson
10 | Mark King
11 | Rory MacGregor
12 | Robert Marshall
13 | Becky Nielsen
14 | Grant Rutherford
15 | Kanokwan Sritawan
17 | Lidia Stopinska-Cherek
18 | Ben Svajko/ Barker
19 | Maria Toscano
20 | Annabel Treshansky
21 | Charlie Walker
22 | Jon Zarecki
16 | Mateusz Stanczak
(22 rows)

4. Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE name = 'Myriam Boran';

name
--------------
Myriam Boran
(1 row)


5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 23:40
 2 | The Incredible Hulk                 | 2008 | 17:30
 3 | Iron Man 2                          | 2010 | 20:40
 4 | Thor                                | 2011 | 16:30
 5 | Captain America: The First Avenger  | 2011 | 13:10
 6 | Avengers Assemble                   | 2012 | 20:30
 7 | Iron Man 3                          | 2013 | 23:05
 8 | Thor: The Dark World                | 2013 | 23:10
10 | Captain America: The Winter Soldier | 2014 | 16:10
11 | Guardians of the Galaxy             | 2014 | 17:15
12 | Avengers: Age of Ultron             | 2015 | 23:35
13 | Ant-Man                             | 2015 | 15:00
14 | Captain America: Civil War          | 2016 | 21:35
15 | Doctor Strange                      | 2016 | 20:40
16 | Guardians of the Galaxy 2           | 2017 | 22:45
17 | Spider-Man: Homecoming              | 2017 | 22:40
18 | Thor: Ragnarok                      | 2017 | 17:40
19 | Black Panther                       | 2018 | 22:00
(18 rows)


6. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Colin Farquhar');
SELECT name FROM people;

name
------------------------
Jennifer Archibald
Katharina Bitzan
Myriam Boran
David Boyle
Alasdair Carstairs
Eric Cross
Amy Edwardson
Jordan Davidson
Stephen Gibson
Mark King
Rory MacGregor
Robert Marshall
Becky Nielsen
Grant Rutherford
Kanokwan Sritawan
Montgomery Stanczak
Lidia Stopinska-Cherek
Ben Svajko/ Barker
Maria Toscano
Annabel Treshansky
Charlie Walker
Jon Zarecki
Colin Farquhar
(23 rows)

7. Jordan Davidson has abandoned us. Remove him from the table of people.

DELETE FROM people WHERE name = 'Jordan Davidson';

name
------------------------
Jennifer Archibald
Katharina Bitzan
Myriam Boran
David Boyle
Alasdair Carstairs
Eric Cross
Amy Edwardson
Stephen Gibson
Mark King
Rory MacGregor
Robert Marshall
Becky Nielsen
Grant Rutherford
Kanokwan Sritawan
Montgomery Stanczak
Lidia Stopinska-Cherek
Ben Svajko/ Barker
Maria Toscano
Annabel Treshansky
Charlie Walker
Jon Zarecki
(21 rows)


8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');
SELECT * FROM movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 23:40
  2 | The Incredible Hulk                 | 2008 | 17:30
  3 | Iron Man 2                          | 2010 | 20:40
  4 | Thor                                | 2011 | 16:30
  5 | Captain America: The First Avenger  | 2011 | 13:10
  6 | Avengers Assemble                   | 2012 | 20:30
  7 | Iron Man 3                          | 2013 | 23:05
  8 | Thor: The Dark World                | 2013 | 23:10
  9 | Batman Begins                       | 2005 | 18:00
 10 | Captain America: The Winter Soldier | 2014 | 16:10
 11 | Guardians of the Galaxy             | 2014 | 17:15
 12 | Avengers: Age of Ultron             | 2015 | 23:35
 13 | Ant-Man                             | 2015 | 15:00
 14 | Captain America: Civil War          | 2016 | 21:35
 15 | Doctor Strange                      | 2016 | 20:40
 16 | Guardians of the Galaxy 2           | 2017 | 22:45
 17 | Spider-Man: Homecoming              | 2017 | 22:40
 18 | Thor: Ragnarok                      | 2017 | 17:40
 19 | Black Panther                       | 2018 | 22:00
 20 | Avengers: Infinity War              | 2018 | 00:00
(20 rows)



8. The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

UPDATE movies SET (title, year, show_time) = ('Guardians of the Galaxy 2', 2017, '00:45') WHERE show_time = '22:45';
SELECT * FROM movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 23:40
 2 | The Incredible Hulk                 | 2008 | 17:30
 3 | Iron Man 2                          | 2010 | 20:40
 4 | Thor                                | 2011 | 16:30
 5 | Captain America: The First Avenger  | 2011 | 13:10
 6 | Avengers Assemble                   | 2012 | 20:30
 7 | Iron Man 3                          | 2013 | 23:05
 8 | Thor: The Dark World                | 2013 | 23:10
 9 | Batman Begins                       | 2005 | 18:00
10 | Captain America: The Winter Soldier | 2014 | 16:10
11 | Guardians of the Galaxy             | 2014 | 17:15
12 | Avengers: Age of Ultron             | 2015 | 23:35
13 | Ant-Man                             | 2015 | 15:00
14 | Captain America: Civil War          | 2016 | 21:35
15 | Doctor Strange                      | 2016 | 20:40
17 | Spider-Man: Homecoming              | 2017 | 22:40
18 | Thor: Ragnarok                      | 2017 | 17:40
19 | Black Panther                       | 2018 | 22:00
16 | Guardians of the Galaxy 2           | 2017 | 00:45
(19 rows)

9. Research how to delete multiple entries from your table in a single command.

1a. DELETE statement without specifying a WHERE clause
  eg. DELETE FROM movies;

1b. TRUNCATE movies
    IGNORE DELETE TRIGGERS
    DROP title;

    ||

1c. TRUNCATE movies
    REUSE title
    IGNORE DELETE TRIGGERS
    IMMEDIATE;
