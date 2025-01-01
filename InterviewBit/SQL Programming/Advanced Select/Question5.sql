SELECT 
    COUNT(ID) AS "COUNT(Country)"
FROM PLACES
WHERE 
    SUBSTRING(Country, -1, 1) IN ("a", "e", "i", "o", "u");