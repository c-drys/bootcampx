-- So we want to select data from the students table and the cohorts table JOINed together. 
-- If these two tables are JOINed together,
-- we can select columns from either table.

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students JOIN cohorts ON cohorts.id = cohort_id;