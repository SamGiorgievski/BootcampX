
-- The comment below is my original submission. It works, but the one on compass is better lol

-- SELECT AVG(duration) AS average_assistance_request_duration
-- FROM (SELECT (completed_at-started_at) AS duration FROM assistance_requests) AS average_duration;



SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;