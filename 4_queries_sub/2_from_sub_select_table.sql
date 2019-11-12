-- The result of a select is effectively a table that can be used as you would use a table
-- So a select statement may be used as a data source of another select statement.

-- SELECT * FROM (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- ) as sub_table;

-- SELECT count(students)
-- FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts;

-- But how do we get a single number for the average number of students per cohort?

-- SELECT avg(count(students))
-- FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts;

-- This query doesn't work and is a little bit difficult to read. Luckily for us, the result of our first query can be used as a table in our FROM clause. If we run the first query

SELECT avg(total_students) as average_students
FROM (
  SELECT count(students) as total_students
  FROM students
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts
) as totals_table;

-- If we treat this as a table, we essentially want to find the average of the total_students column.

