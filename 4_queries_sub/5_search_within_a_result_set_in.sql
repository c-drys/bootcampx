-- Let's say we wanted to get the name of all incomplete assignments for a student. It's a fairly simple query to get all completed assignments for a student.

SELECT assignment_id
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';


-- If we had the complete list here, this query would work. It would return the name of all of the assignments not completed by 'Ibrahim Schimmel'.

SELECT assignments.name
FROM assignments 
WHERE id NOT IN (1, 2, 3, 4, 5, ...)


-- This will return the name of all assignments not completed by 'Ibrahim Schimmel'.

SELECT assignments.name
FROM assignments 
WHERE id NOT IN
(
  SELECT assignment_id
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.name = 'Ibrahim Schimmel'
);