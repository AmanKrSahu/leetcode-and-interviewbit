SELECT
    SUM(DISTINCT Job.Salary) AS "Salary"
FROM Jobs Job 
JOIN
    Students Stud
    ON Job.Id = Stud.Id
JOIN
    Departments Dept 
    ON Stud.DepartmentId = Dept.DepartmentId
WHERE
    Dept.DepartmentName = "CSE";