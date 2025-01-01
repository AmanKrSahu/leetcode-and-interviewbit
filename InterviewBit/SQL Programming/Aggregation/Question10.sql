SELECT Name
FROM Students
ORDER BY 
    CASE
        WHEN Marks = "Absent" THEN 1
        ELSE 0
    END, 
    Marks DESC,
    Name ASC;