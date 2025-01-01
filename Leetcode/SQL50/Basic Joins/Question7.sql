SELECT
    Stud.student_id,
    Stud.student_name,
    Sub.subject_name,
    COUNT(Exam.subject_name) AS attended_exams
FROM 
    Students Stud
CROSS JOIN
    Subjects Sub
LEFT JOIN 
    Examinations Exam
    ON Stud.student_id = Exam.student_id
    AND Sub.subject_name = Exam.subject_name
GROUP BY
    Stud.student_id,
    Stud.student_name,
    Sub.subject_name
ORDER BY
    Stud.student_id;