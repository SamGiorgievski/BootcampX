-- SELECT students.name AS student, AVG(assignment_submissions.duration) as average_assignment_duration
-- FROM students
-- JOIN assignment_submissions ON students.id = student_id
-- WHERE end_date IS NULL
-- GROUP BY students.name
-- ORDER BY average_assignment_duration DESC;


SELECT students.name AS student, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration ASC;