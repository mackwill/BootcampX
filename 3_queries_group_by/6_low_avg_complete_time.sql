SELECT students.name AS student,
  AVG(assignment_submissions.duration) AS average_assignment_duration,
  AVG(assignments.duration) AS average_estimated_duration
FROM assignments
  JOIN assignment_submissions ON (assignments.id = assignment_id)
  JOIN students ON (student_id = students.id)
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;