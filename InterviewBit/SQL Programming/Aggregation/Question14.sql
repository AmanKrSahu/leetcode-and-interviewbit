SELECT
    ROUND(SUM(CASE 
            WHEN M.Result = 1 THEN 1
            ELSE 0
        END
    )/COUNT(*), 4) AS "Percentage Wins"
FROM Matches M 
LEFT JOIN
    Team2 T 
    ON M.PlayerId2 = T.Id 
WHERE T.Cheater = 0
GROUP BY M.Date;