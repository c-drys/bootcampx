-- The RIGHT OUTER JOIN will return all cohorts, even ones without any students enrolled

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. In the rest of our examples, we will omit the OUTER keyword.

