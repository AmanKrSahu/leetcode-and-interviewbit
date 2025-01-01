SELECT
    COUNT(*) AS "A"
FROM Students
JOIN (
        SELECT
            AVG(Marks) AS TotalAvgMarks
        FROM Students
    ) AS TotalAvg
    ON Students.Marks > TotalAvg.TotalAvgMarks
GROUP BY ClassID
ORDER BY ClassID;