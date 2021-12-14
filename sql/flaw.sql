USE universitydb
SELECT group_id, COUNT(student_id) AS total
FROM students
GROUP BY group_id
HAVING COUNT(*) < 10 