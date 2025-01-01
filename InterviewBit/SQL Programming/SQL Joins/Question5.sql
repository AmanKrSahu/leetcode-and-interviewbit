SELECT
    CONCAT(dir.director_first_name, dir.director_last_name) AS director_name,
    mov.movie_title 
FROM directors dir 
JOIN
    movies_directors movdir
    ON dir.director_id = movdir.director_id
JOIN    
    movies mov 
    ON movdir.movie_id = mov.movie_id
JOIN (
    SELECT movie_id
    FROM movies_cast
    WHERE role = "SeanMaguire"
    ) AS movcast
    ON mov.movie_id = movcast.movie_id;