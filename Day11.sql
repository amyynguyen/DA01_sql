#ex1: hackerrank-average-population-of-each-continent.
SELECT 
COUNTRY.CONTINENT, 
FLOOR(AVG(CITY.POPULATION))
FROM CITY
INNER JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT
#ex2: datalemur-signup-confirmation-rate.
SELECT 
  ROUND(
    COUNT(DISTINCT texts.email_id) * 1.0 / COUNT(DISTINCT emails.email_id), 
    2
  ) AS confirm_rate
FROM emails 
LEFT JOIN texts
  ON emails.email_id = texts.email_id AND texts.signup_action = 'Confirmed'
  
#ex3: datalemur-time-spent-snaps.
SELECT 
  age_breakdown.age_bucket,
  ROUND(SUM(CASE WHEN activities.activity_type = 'send' THEN activities.time_spent ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN activities.activity_type IN ('send', 'open') THEN activities.time_spent ELSE 0 END), 2) AS send_perc,
  ROUND(SUM(CASE WHEN activities.activity_type = 'open' THEN activities.time_spent ELSE 0 END) * 100.0 / 
        SUM(CASE WHEN activities.activity_type IN ('send', 'open') THEN activities.time_spent ELSE 0 END), 2) AS open_perc
FROM activities
JOIN age_breakdown
  ON activities.user_id = age_breakdown.user_id
WHERE activities.activity_type IN ('send', 'open')
GROUP BY age_breakdown.age_bucket;

