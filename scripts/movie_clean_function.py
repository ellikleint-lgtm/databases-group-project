
def create_moviesclean(original, cleanfile):
    with (
        open (original,encoding="utf-8") as f_input,
    open (cleanfile, "w", encoding="utf-8", newline="") as f_output
    ):

        for l in f_input:
            movie= l.rstrip("\n").split("|")

            movie_id = movie[0]
            title = movie[1]
            release_date = movie[2]
            
            f_output.write("|".join([movie_id, title, release_date]) + "\n")

if __name__ == "__main__":
    create_moviesclean("movies.csv", "movie_clean.csv")

