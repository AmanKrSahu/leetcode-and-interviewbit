SELECT
    CONCAT(Player, "(", SUBSTRING(Role, 1, 1), ")") AS "N"
FROM GAMERS
ORDER BY Player;