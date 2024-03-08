---ex1: datalemur-laptop-mobile-viewership.
SELECT 
SUM(CASE
  WHEN device_type = 'laptop' THEN 1
  ELSE 0
  END) AS laptop_views,
SUM(CASE
  WHEN device_type = 'phone' THEN 1
  ELSE 0
  END) AS mobile_views
FROM viewership


---ex2: datalemur-triangle-judgement.
SELECT x, y, z,
CASE
    WHEN x<y+x and y<x+z and z<x+y THEN 'Yes'
    ELSE 'No'
    END AS triangle
FROM Triangle

---(REVIEW NEEDED) ex3: datalemur-uncategorized-calls-percentage. (Getting Error division by zero)
SELECT
ROUND(100 * COUNT(case_id) FILTER(
  WHERE call_category IS NULL
  OR call_category = 'n/a') / COUNT('case_id'), 1) AS uncategorized_call,
COUNT('case_recieved') as total_calls
FROM callers

---ex4: datalemur-find-customer-referee.
SELECT
name
FROM Customer
WHERE COALESCE(referee_id, 0) != 2

---ex5: stratascratch the-number-of-survivors.
SELECT survived,
SUM(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class,
SUM(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
SUM(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived
