SELECT
    MAX(CASE WHEN Role = "Healer" THEN Player END) AS "MIN(Healer)",
    MAX(CASE WHEN Role = "Attacker" THEN Player END) AS "MIN(Attacker)",
    MAX(CASE WHEN Role = "Defender" THEN Player END) AS "MIN(Defender)",
    MAX(CASE WHEN Role = "Tactician" THEN Player END) AS "MIN(Tactician)"
FROM (
    SELECT 
        player, 
        role,
        ROW_NUMBER() OVER (PARTITION BY role ORDER BY player) AS row_num
    FROM GAMERS
) AS ordered_gamers
GROUP BY row_num
ORDER BY row_num;