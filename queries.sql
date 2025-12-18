
Select g.g_name,AVG(rt.rating) as avg_rating
from ratings as rt
join users as u on u.user_id=rt.user_id
join movie_genres as mg on mg.movie_id=rt.movie_id
join genres as g on g.genre_id=mg.genre_id
where u.gender='F'
Group by g.g_name
order by avg_rating DESC
limit 5;


Select g.g_name,AVG(rt.rating) as avg_rating
from ratings as rt
join users as u on u.user_id=rt.user_id
join movie_genres as mg on mg.movie_id=rt.movie_id
join genres as g on g.genre_id=mg.genre_id
where u.gender='M'
Group by g.g_name
order by avg_rating DESC
limit 5;

Select u.gender, g.g_name,AVG(rt.rating) as avg_rating
from ratings as rt
join users as u on u.user_id=rt.user_id
join movie_genres as mg on mg.movie_id=rt.movie_id
join genres as g on g.genre_id=mg.genre_id
Group by u.gender,g.g_name
order by g.g_name,u.gender;

