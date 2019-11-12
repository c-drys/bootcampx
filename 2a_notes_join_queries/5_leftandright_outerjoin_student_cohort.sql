-- We could also rewrite any RIGHT JOIN as a LEFT JOIN, just by changing the order of the tables. So the following two queries would produce identical results:

FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;
FROM cohorts RIGHT JOIN students ON cohorts.id = cohort_id;


-- All students and only cohorts that have students. students is the table to the left of the word LEFT.

FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id



-- Only students that have a cohort_id and all cohorts. cohorts is the table to the right of the word RIGHT.

FROM students RIGHT JOIN cohorts ON cohorts.id = cohort_id



-- All students and all cohorts.

FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id
