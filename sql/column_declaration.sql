CREATE TABLE students
(
  student_id INT IDENTITY PRIMARY KEY,
  first_name NVARCHAR(40) NOT NULL,
  last_name NVARCHAR(40) NOT NULL
)
CREATE TABLE groups
(
  group_id INT IDENTITY PRIMARY KEY,
  group_name NVARCHAR(40) NOT NULL UNIQUE
)
CREATE TABLE courses
(
  course_id INT IDENTITY PRIMARY KEY,
  course_name NVARCHAR(50) NOT NULL UNIQUE,
  course_description NVARCHAR(400) NOT NULL UNIQUE
)
ALTER TABLE students
ADD group_id INT REFERENCES groups(group_id)
ALTER TABLE groups
ADD course_id INT REFERENCES courses(course_id)