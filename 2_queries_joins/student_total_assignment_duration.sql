SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions 
JOIN students ON students.id=assignment_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel';

-- ASSIGNMENT_SUBMISSIONS 
-- id, assignment_id, student_id, submission_date, duration

--ASSIGNMENTS
-- id, name, content, duration, day, chapter