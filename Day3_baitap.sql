---ex1: hackerank-revising-the-select-query.
SELECT Name FROM CITY
WHERE POPULATION > 120000
AND COUNTRYCODE = 'USA'

---ex2: hackerank-japanese-cities-attributes.
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN'

---ex3: hackerank-weather-observation-station-1.
SELECT  CITY, STATE FROM STATION

---ex4: hackerank-weather-observation-station-6
SELECT DISTINCT(CITY) FROM STATION
WHERE CITY LIKE ('A%') OR CITY LIKE ('E%') OR CITY LIKE ('I%') OR CITY LIKE ('O%') OR CITY LIKE ('U%')
ORDER BY CITY 

---ex5: hackerank-weather-observation-station-7.
SELECT DISTINCT(CITY) FROM STATION
WHERE CITY LIKE ('%A') OR CITY LIKE ('%E') OR CITY LIKE ('%I') OR CITY LIKE ('%O') OR CITY LIKE ('%U')

---ex6: hackerank-weather-observation-station-9.
SELECT DISTINCT(CITY) FROM STATION

WHERE CITY NOT LIKE ('A%') 
AND CITY NOT LIKE ('E%')
AND CITY NOT LIKE ('I%') 
AND CITY NOT LIKE ('O%') 
AND CITY NOT LIKE ('U%')

ORDER BY CITy

---ex7: hackerank-name-of-employees.
SELECT NAME FROM EMPLOYEE
ORDER BY NAME

---ex8: hackerank-salary-of-employees.
SELECT NAME FROM EMPLOYEE
WHERE SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC

---ex9: leetcode-recyclable-and-low-fat-products.
SELECT PRODUCT_ID FROM PRODUCTS
WHERE low_fats = 'Y'
AND recyclable = 'Y'

---ex10: leetcode-find-customer-referee.
SELECT name FROM Customer
WHERE referee_id <> 2 
OR referee_id IS NULL

---ex11: leetcode-big-countries.
SELECT name, population, area FROM World
WHERE area >= 3000000
OR population >= 25000000

---ex12: leetcode-article-views.
SELECT DISTINCT author_id AS id FROM Views
WHERE author_id = viewer_id
ORDER BY author_id

---ex13: datalemur-tesla-unfinished-part.
SELECT part, assembly FROM parts_assembly;
WHERE finish_date IS NULL;

---ex14: datalemur-lyft-driver-wages.
SELECT * FROM lyft_drivers
WHERE yearly_salary <= 30000
OR yearly_salar

---ex15: datalemur-find-the-advertising-channel.
SELECT advertising_channel FROM uber_advertising
WHERE money_spent > 100000
