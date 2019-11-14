const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// // not selecting 1st // showing 71 - 81 ??
// pool.query(`
// SELECT students.id, students.name, cohorts.name AS cohortname
// FROM students
// JOIN cohorts ON students.cohort_id = cohorts.id
// LIMIT 5;
// `)
// .then(res => {
//   res.rows.forEach(user => {
//     console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohortname} cohort`);
//   })
//   })
// .catch(err => console.error('query error', err.stack));


pool.query(`
SELECT students.id AS student_id, students.name AS name, cohort_id, cohorts.name AS cohort
FROM students
JOIN cohorts
ON cohorts.id = cohort_id 
WHERE cohorts.name LIKE '%${process.argv[2]}%'
LIMIT ${process.argv[3] || 5};
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} had an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    });
  
  })
  .catch(err => console.error('query error', err.stack));

  pool.query(`
  SELECT DISTINCT cohorts.name as cohort, teachers.name as teacher
  FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
  WHERE cohorts.name LIKE $1
  ORDER BY teacher
  `, values)
  .then(res => { 
    console.log('connected')
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    })
  })
  .catch(err => console.error('query error', err.stack));