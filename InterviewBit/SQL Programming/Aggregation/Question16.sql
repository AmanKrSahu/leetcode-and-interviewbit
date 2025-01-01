SELECT 
    LEAD(Marks) OVER (ORDER BY Marks) AS "Next"
FROM Students 
ORDER BY Name;