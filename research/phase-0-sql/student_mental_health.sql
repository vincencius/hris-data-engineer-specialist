-- Project: Analyzing Students' Mental Health (DataCamp)
-- Objective: Analyze the impact of length of stay on depression scores for international students.
-- Dataset: Survey data from a Japanese international university.

SELECT stay, count(*) as count_int, ROUND(AVG(todep),2) as average_phq, ROUND(AVG(tosc),2) as average_scs, ROUND(AVG(toas),2) as average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC