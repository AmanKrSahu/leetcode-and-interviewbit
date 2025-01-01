SELECT 
    DISTINCT mov.movie_title
FROM movies mov
JOIN 
    movies_cast movcast  
    ON mov.movie_id = movcast.movie_id
WHERE movcast.actor_id IN (
    SELECT actor_id
    FROM movies_cast
    GROUP BY actor_id
    HAVING COUNT(DISTINCT movie_id) >= 2
);