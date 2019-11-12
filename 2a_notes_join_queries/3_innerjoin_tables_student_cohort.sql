-- It will produce the exact same results as when we leave the INNER keyword off
-- An INNER JOIN will only give us rows where there is a match between the two tables. 
-- Any students with a cohort_id of NULL will not appear in the results of this kind of join.

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;


