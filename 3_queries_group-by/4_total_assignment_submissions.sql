SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students on students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.*) DESC;