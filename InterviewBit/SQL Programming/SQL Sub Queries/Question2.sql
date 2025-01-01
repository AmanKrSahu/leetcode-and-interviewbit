SELECT
    ID, Name, Age,
    CASE 
        WHEN Marks>25 AND Marks<=50 THEN 50
        ELSE Marks
    END AS Marks
FROM STUDY;