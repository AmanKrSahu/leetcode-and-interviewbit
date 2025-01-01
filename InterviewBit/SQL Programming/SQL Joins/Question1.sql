SELECT T1.TestId
FROM Tests T1
LEFT JOIN
    Tests T2
    ON T1.TestId - T2.TestId = 1
WHERE
    T1.Marks > T2.Marks;