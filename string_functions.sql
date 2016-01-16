SELECT employee_id, REVERSE(SUBSTRING(REVERSE(email),4)) FROM hr_db.employees;

SELECT * FROM hr_db.locations WHERE LENGTH(street_address) = (SELECT MIN(LENGTH(street_address)) FROM locations);

SELECT FIRST_NAME AS Name, LENGTH(FIRST_NAME) AS LENGTH 
FROM hr_db.employees 
WHERE SUBSTRING(FIRST_NAME,1,1) in ('A', 'J', 'M') ORDER BY Name;
