SELECT cohorts.name, count(students.name) AS student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.name) >= 18
ORDER BY COUNT(students.name);