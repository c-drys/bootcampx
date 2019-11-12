-- ERROR:  syntax error at or near "OUTER"
-- That is because there are 3 different types of OUTER JOIN
-- and we need to specify which one we want to perform: LEFT, RIGHT, or FULL

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;