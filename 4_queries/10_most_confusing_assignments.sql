SELECT assignments.id, assignments.day, chapter, assignments.name, COUNT(assignment_id) AS total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;