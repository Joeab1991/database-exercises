USE codeup_test_db;

ALTER TABLE albums ADD UNIQUE unique_artist_and_album (artist, name);

ALTER TABLE albums ADD PRIMARY KEY (artist);

SHOW INDEX FROM albums;


DESCRIBE albums;


