-- The LEFT OUTER JOIN will return all of the students, even ones without a cohort_id.

SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. In the rest of our examples, we will omit the OUTER keyword.