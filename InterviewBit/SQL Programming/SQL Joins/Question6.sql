SELECT
    mov.movie_title,
    mov.movie_year,
    CONCAT(dir.director_first_name, dir.director_last_name) AS director_name,
    CONCAT(act.actor_first_name, act.actor_last_name) AS actor_name,
    movcast.role
FROM movies mov 
JOIN
    movies_directors movdir 
    ON mov.movie_id = movdir.movie_id
JOIN 
    directors dir 
    ON movdir.director_id = dir.director_id
JOIN    
    movies_cast movcast 
    ON mov.movie_id = movcast.movie_id
JOIN    
    actors act 
    ON movcast.actor_id = act.actor_id
ORDER BY
    mov.movie_time ASC 
LIMIT 1;