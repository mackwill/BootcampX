SELECT
  assignment_id AS id,
  assignments.name AS name,
  assignments.day AS day,
  assignments.chapter AS chapter,
  COUNT(assistance_requests.*) AS total_requests
FROM
  assignments
  JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY
  assignment_id,
  assignments.name,
  assignments.day,
  assignments.chapter
ORDER BY
  total_requests DESC