SELECT
    SQRT(
        POWER(MAX(XCoordinate)-MIN(XCoordinate), 2) + 
        POWER(MAX(YCoordinate)-MIN(YCoordinate), 2)
    ) AS "A"
FROM HOUSES;