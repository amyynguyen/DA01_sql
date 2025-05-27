SELECT * FROM activities LIMIT 5;
SELECT age.age_bucket, 
  ROUND(SUM(activities.time_spent)*100 FILTER (WHERE activities.activity_type = 'send') / SUM(activities.time_spent), 2) AS send_perc,
  ROUND(SUM(activities.time_spent)*100 FILTER (WHERE activities.activity_type = 'open') / SUM(activities.time_spent), 2) AS open_perc
FROM activities

INNER JOIN age_breakdown AS age
ON activities.user_id = age.user_id
WHERE activities.activity_type IN ('send', 'open')
GROUP BY age.age_bucket
