SELECT 
    L1.Name AS "Labourer1",
    L2.Name AS "Labourer2",
    L1.Country
FROM LABOURERS L1
CROSS JOIN
    LABOURERS L2
    ON L1.Country = L2.Country
    AND L1.ID != L2.ID
ORDER BY 
    L1.Name,
    L2.Name;