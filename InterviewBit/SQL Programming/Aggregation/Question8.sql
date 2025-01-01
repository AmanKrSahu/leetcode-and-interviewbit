SELECT 
    B.id AS Id
FROM Books B
LEFT JOIN 
    BoughtBooks BgtB 
    ON B.id = BgtB.BooksId
GROUP BY B.id
HAVING COUNT(DISTINCT BgtB.id) >= 3;