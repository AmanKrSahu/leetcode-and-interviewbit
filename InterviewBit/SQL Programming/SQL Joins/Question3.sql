SELECT
    COUNT(J.Id) AS "Job_Offers"
FROM Students S
LEFT JOIN
    Jobs J
    ON S.Id = J.Id
    AND MONTH(J.Date) = 11
GROUP BY
    S.Id
ORDER BY
    S.Id;