USE universitydb
DELETE students FROM students
JOIN groups ON students.group_id = groups.group_id
WHERE group_name = 'SR-1'