SELECT 
    CONCAT(D.DepartmentName, ',', S.Name, ',', S.GPA) AS A
FROM 
    Students S
JOIN 
    Departments D 
    ON S.DepartmentId = D.DepartmentId
JOIN (
        SELECT 
            DepartmentId, 
            MIN(GPA) AS LowestGPA
        FROM 
            Students
        GROUP BY 
            DepartmentId
    ) AS MinGPA 
    ON S.DepartmentId = MinGPA.DepartmentId 
    AND S.GPA = MinGPA.LowestGPA
ORDER BY 
    D.DepartmentName;