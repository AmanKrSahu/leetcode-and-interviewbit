SELECT
    Sig.user_id,
    ROUND(AVG(IF(Con.action="confirmed", 1, 0)), 2) AS confirmation_rate
FROM 
    Signups Sig
LEFT JOIN
    Confirmations Con
    ON Sig.user_id = Con.user_id
GROUP BY
    Sig.user_id;