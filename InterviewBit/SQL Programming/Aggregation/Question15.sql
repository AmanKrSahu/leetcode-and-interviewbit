SELECT
    CONCAT(Stud.Name, ",", Job.Date) AS "Offers"
FROM Jobs Job 
JOIN
    Students Stud 
    ON Job.Id = Stud.Id
JOIN    
    Departments Dept 
    ON Stud.DepartmentId = Dept.DepartmentId
ORDER BY Dept.DepartmentName;