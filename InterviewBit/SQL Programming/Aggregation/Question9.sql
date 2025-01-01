SELECT P.Name
FROM Players P
JOIN (
    SELECT Id,
        SUM(CASE WHEN Result = 1 THEN 1 ELSE 0 END) AS Wins,
        SUM(CASE WHEN Result = 0 THEN 1 ELSE 0 END) AS Losses
    FROM Matches
    GROUP BY Id
    ) AS M 
    ON P.Id = M.Id
WHERE 
    M.Wins >= 1 
    AND M.Losses <= 1;