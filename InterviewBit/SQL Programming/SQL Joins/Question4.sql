SELECT 
    rev.reviewer_name
FROM reviewers rev 
INNER JOIN 
    ratings rat 
    ON rev.reviewer_id = rat.reviewer_id
WHERE
    rat.reviewer_stars IS NULL;