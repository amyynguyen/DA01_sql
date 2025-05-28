#ex1: hackerrank-average-population-of-each-continent.
SELECT 
COUNTRY.CONTINENT, 
FLOOR(AVG(CITY.POPULATION))
FROM CITY
INNER JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT
#ex2: datalemur-signup-confirmation-rate.
#ex3: datalemur-time-spent-snaps.
  SELECT * FROM activities LIMIT 5;
SELECT age.age_bucket, 
  ROUND(SUM(activities.time_spent)*100 FILTER (WHERE activities.activity_type = 'send') / SUM(activities.time_spent), 2) AS send_perc,
  ROUND(SUM(activities.time_spent)*100 FILTER (WHERE activities.activity_type = 'open') / SUM(activities.time_spent), 2) AS open_perc
FROM activities

INNER JOIN age_breakdown AS age
ON activities.user_id = age.user_id
WHERE activities.activity_type IN ('send', 'open')
GROUP BY age.age_bucket
