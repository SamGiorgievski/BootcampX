const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const process = require('process');

pool.query(`
SELECT DISTINCT(teachers.name) AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
ORDER BY teachers.name;
`)
.then(res => {console.log(res.rows)})
.catch(err => console.error('query error', err.stack));