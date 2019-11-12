-- The FULL OUTER JOIN will return all cohorts and all students, even when there is no match

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;