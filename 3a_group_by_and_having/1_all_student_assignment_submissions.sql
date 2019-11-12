-- If we want to calculate the total number of assignment_submissions for all students, 
-- the count aggregate function is perfect

SELECT count(assignment_submissions.*) as total_submissions
FROM assignment_submissions;