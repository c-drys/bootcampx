-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, 
-- use 'Elliot Dickinson' for the student's name here.

SELECT COUNT(assistance_requests.*) AS total_assistances, students.name
FROM students
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;