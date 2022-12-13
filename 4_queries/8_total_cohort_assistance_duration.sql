SELECT cohorts.name AS cohort, SUM(completed_at-started_at) AS total_duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY total_duration;
