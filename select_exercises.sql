USE codeup_test_db;

SELECT name as 'Albums by Pink Floyd in Top 50 Best Selling Albums List' from albums where artist = 'Pink Floyd';

SELECT release_date as 'The year Sgt. Pepper''s Lonely Hearts Club Band was released.' from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';


SELECT genre as 'The genre for Nevermind' from albums where name = 'Nevermind';


SELECT name as 'Which albums were released in the 1990''s' from albums where release_date BETWEEN 1989 AND 2000;


SELECT name as 'Which albums had less than 20 million certified sales' from albums where sales < 20.0;


SELECT name, artist as 'All the albums with a genre of "Rock".' from albums where genre = 'Rock';
