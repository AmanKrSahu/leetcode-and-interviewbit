SELECT 
    emp1.name
FROM 
    Employee emp1
LEFT JOIN
    Employee emp2
    ON emp1.id = emp2.managerId
GROUP BY
    emp1.id
HAVING 
    COUNT(emp2.managerId) >= 5;