USE codeup_test_db;

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';


SELECT release_date
FROM albums
Where name = 'Sgt. Pepper''s Lonely Hearts Club Band';


SELECT genre
FROM albums
Where name = 'Nevermind';



SELECT name
FROM albums
Where release_date BETWEEN 1989 AND 2000;


SELECT name
FROM albums
Where sales < 20.0;


SELECT name
FROM albums
Where genre = 'Rock';

