USE codeup_test_db;

SELECT CONCAT(artist, ' | ', name, ' | ', release_date) as 'Albums released after 1991' From albums where release_date > 1991;

SELECT * From albums where genre = 'Disco';

SELECT * From albums where artist > 'Whitney Houston';

DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'Disco';

DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;
