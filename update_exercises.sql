USE codeup_test_db;


# Write SELECT statements to output each of the following with a caption:
#
# All albums in your table.

SELECT name AS 'All Album Names' FROM albums;

# Set all albums sales to be 10 times more
UPDATE albums SET sales = sales * 10;

SELECT * FROM albums;

# All albums released before 1980

SELECT CONCAT(name, ': ', release_date) as 'Album''s Released Prior to 1980' FROM albums WHERE release_date < 1980;

UPDATE albums SET release_date = (release_date - 100);

SELECT * FROM albums;

# All albums by Michael Jackson

SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Peter Jackson';
