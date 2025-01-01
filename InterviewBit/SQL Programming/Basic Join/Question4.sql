SELECT 
    COUNT(Emp.Name) AS "COUNT(Name)"
FROM EMPLOYEE Emp
JOIN 
    EVALUATION Eval 
    ON Emp.Points BETWEEN Eval.Lower AND Eval.Upper
WHERE 
    Eval.Rating < 3

UNION ALL

SELECT 
    'COUNT(Name)' AS "COUNT(Name)" 

UNION ALL

SELECT 
    COUNT(Emp.Name) 
FROM 
    EMPLOYEE Emp
JOIN 
    EVALUATION Eval 
    ON Emp.Points BETWEEN Eval.Lower AND Eval.Upper
WHERE 
    Eval.Rating > 8;