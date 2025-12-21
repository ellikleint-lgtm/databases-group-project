import csv

def movie_genres(movies_csv, genre_csv,movie_genre_csv):

    genres=[]
    with open(genre_csv,encoding="utf-8") as f:
        for l in f:
            line=l.strip()
            if not line or "|" not in line:
                continue
            name, g_id = line.split("|")
            genres.append(name)
        
    with(
        open(movies_csv, encoding="utf-8") as f_input,
        open (movie_genre_csv,"w",newline="", encoding="utf-8") as f_output
        ):

        write_line= csv.write(f_output)
        write_line.writerow(["movieId","genreId"])

        for l in f_input:
            movie= l.strip().split("|")
            movie_id=int(movie[0])
            genres=movie[5:]

            for g_id,value in enumerate(genres):
                if value=="1":
                    write_line.writerow([movie_id,g_id])




if __name__ == "__main__":
    movie_genres("movies.csv", "genre.csv", "movie_genres.csv")
