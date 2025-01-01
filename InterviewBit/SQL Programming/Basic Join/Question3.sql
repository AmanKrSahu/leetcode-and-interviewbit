SELECT  
    CASE
        WHEN Eval.Rating < 6 THEN NULL
        ELSE Emp.Name
    END AS Names,
    Eval.Rating
FROM EMPLOYEE Emp
LEFT JOIN
    EVALUATION Eval
    ON Emp.Points >= Eval.Lower
    AND Emp.Points <= Eval.Upper
ORDER BY
    Eval.Rating DESC,
    Names ASC;