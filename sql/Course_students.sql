USE universitydb
SELECT first_name, last_name, groups.group_name FROM students
JOIN groups ON students.group_id = groups.group_id
WHERE groups.group_name = 'SR-1'