---ex1: hackerrank-more-than-75-marks.
SELECT Name FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID

---ex2: leetcode-fix-names-in-a-table.
SELECT user_id,
CONCAT(UPPER(LEFT(name, 1)), LOWER(RIGHT(name, length(name)-1))) AS name
FROM Users
ORDER BY user_id

---ex3: datalemur-total-drugs-sales.
SELECT manufacturer,
CONCAT('$', ROUND(SUM(total_sales / 1000000)), ' ', 'million') AS sales
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer 

---(REVIEW NEEDED) ex4: avg-review-ratings.
SELECT 
EXTRACT(month FROM submit_date) as mth,
product_id,
ROUND(AVG(stars), 2) AS avg_star
FROM reviews

GROUP BY mth, product_id
ORDER mth, product_id

---ex5: teams-power-users.
SELECT sender_id,
COUNT(message_id) as message_count
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = 8
AND EXTRACT(YEAR FROM sent_date) = 2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2
  
---ex6: invalid-tweets.
SELECT tweet_id FROM Tweets
WHERE length(content) > 15

---ex7: user-activity-for-the-past-30-days.
SELECT
activity_date AS day,
COUNT(DISTINCT(user_id)) as active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date

---ex8: number-of-hires-during-specific-time-period.

