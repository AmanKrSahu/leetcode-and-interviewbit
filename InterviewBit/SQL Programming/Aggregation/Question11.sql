SELECT Name
FROM Students
ORDER BY
    CASE
        WHEN SUBSTRING(Name, 1, 1) NOT IN ("A", "E", "I", "O", "U") THEN GREATEST(Marks1, Marks2)
        ELSE LEAST(Marks1, Marks2)
    END DESC;