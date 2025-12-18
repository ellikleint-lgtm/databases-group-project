# databases-group-project
Group project for Databases course – Gender differences in movie genre ratings
# Databases Group Project  
## Gender Differences in Movie Genre Ratings

This repository contains the group project for the Databases course.

## Project Overview
We analyze gender differences in movie ratings across genres using a relational database
and exploratory visualizations.

## Data
The project is based on the MovieLens dataset.
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
