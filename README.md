# databases-group-project
Group project G for Databases course – Gender differences in movie genre ratings
# Databases Group Project  
## Gender Differences in Movie Genre Ratings

This repository contains the group project G for the Databases course.

## Project Overview
We analyze gender differences in movie ratings across genres using a relational database
and exploratory visualizations.

## Data
This project is based on the MovieLens dataset.
Relevant files:
- `data.csv`: ratings (user, movie, rating, timestamp)
- `user.csv`: user metadata (gender, age, occupation)
- `movie_genres.csv`: movie–genre mapping
- `genre.csv`: genre reference table

## Data Modeling
The relational schema is defined in:
- "datamodeling.sql"

It includes the tables:
- users
- movies
- genres
- movie_genres
- ratings
  
## Data Preprocessing

This project includes two Python scripts used for preprocessing the raw MovieLens data 
before ingestion into the relational database.

### Scripts

- `scripts/movie_clean_function.py`  
  Cleans the original `movies.csv` file by extracting only the relevant attributes 
  (movieId, title, release date) and writes them to a new file `movie_clean.csv`.

- `scripts/movie_genre_function.py`  
  Transforms the multi-genre encoding of movies into a relational format by creating 
  a `movie_genres.csv` file containing `(movieId, genreId)` pairs.  
  This enables a many-to-many relationship between movies and genres in the database schema.

## Queries
All SQL queries used for the analysis can be found in:
- "queries.sql"

## Analysis & Visualizations
The analysis for Objective 4 is implemented in:
- "objective4_visualizations.ipynb"

It reproduces the visualizations shown in the presentation. Due to limited space we just used the top 5, bottom 5 visualisation.

## Reproducibility
To reproduce the analysis:
1. Create the database using `datamodeling.sql`
2. Import the CSV files
3. Run the queries in `queries.sql`
4. Execute the Jupyter notebook `objective4_visualizations.ipynb`

## Authors
Group project – Databases course
