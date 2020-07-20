SELECT cohorts.name AS cohort_name,
  count(students.*) AS total_students
FROM students
  JOIN cohorts ON (cohort_id = cohorts.id)
GROUP BY cohorts.name
HAVING count(students.*) >= 18;
ORDER BY student_count