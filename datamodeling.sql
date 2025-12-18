

DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movie_genres;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
  user_id  SERIAL PRIMARY KEY,
  age  INT NOT NULL,
  gender CHAR(1) NOT NULL,
  occupation VARCHAR(64) NOT NULL,
  zip_code VARCHAR(16) NOT NULL
);


CREATE TABLE movies (
  movie_id INteger PRIMARY KEY,
  title  VARCHAR(256) NOT NULL,
  release_date VARCHAR(32));

CREATE TABLE genres (
  genre_id SERIAL PRIMARY KEY,
  g_name VARCHAR(64) UNIQUE NOT NULL
);
CREATE TABLE movie_genres (
  movie_id  INTEGER NOT NULL REFERENCES movies(movie_id),
  genre_id  INTEGER NOT NULL REFERENCES genres(genre_id),
  PRIMARY KEY (movie_id, genre_id)
);

CREATE TABLE ratings (
  rating_id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL REFERENCES users(user_id),
  movie_id  INTEGER NOT NULL REFERENCES movies(movie_id),
  rating  INTEGER NOT NULL CHECK (rating BETWEEN 1 AND 5),
  rating_timestamp BIGINT NOT NULL,
  UNIQUE (user_id, movie_id)
);

COPY users FROM 'C:\Users\Programacion\Desktop\Graz\Databases\base de datos\user.csv' DELIMITER '|';
COPY genres(g_name,genre_id) from 'C:\Users\Programacion\Desktop\Graz\Databases\base de datos\genre.csv' delimiter'|';
copy movies from 'C:\Users\Programacion\Desktop\Graz\Databases\base de datos\movie_clean.csv' delimiter'|';
copy ratings(user_id, movie_id, rating, rating_timestamp) from 'C:\Users\Programacion\Desktop\Graz\Databases\base de datos\data.csv' delimiter E'\t';

COPY movie_genres from 'C:\Users\Programacion\Desktop\Graz\Databases\base de datos\movie_genres.csv' CSV HEADER
DELIMITER ','; 