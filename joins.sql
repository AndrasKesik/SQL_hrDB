SELECT d.department_name, d.location_id, l.STREET_ADDRESS, l.CITY, l.STATE_PROVINCE, c.COUNTRY_NAME FROM hr_db.departments as d
JOIN hr_db.locations AS l
ON d.location_id = l.location_id
JOIN hr_db.countries AS c
ON l.COUNTRY_ID = c.COUNTRY_ID;

SELECT e.FIRST_NAME, e.LAST_NAME, d.DEPARTMENT_ID, d.DEPARTMENT_NAME 
FROM hr_db.employees AS e
JOIN hr_db.departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

SELECT e.FIRST_NAME, e.LAST_NAME, j.JOB_TITLE, d.DEPARTMENT_ID, d.DEPARTMENT_NAME FROM hr_db.employees AS e 
JOIN departments AS d 
ON e.department_id = d.department_id
JOIN jobs AS j 
ON e.job_id = j.job_id
JOIN locations AS l
ON d.LOCATION_ID = l.LOCATION_ID
WHERE l.city = "London";

SELECT d.department_name, COUNT(e.employee_id) AS employees FROM hr_db.departments AS d
JOIN employees AS e ON e.department_id = d.department_id
GROUP BY d.department_id;

SELECT e.first_name, e.last_name, e.hire_date FROM hr_db.employees AS e
JOIN (SELECT * FROM hr_db.employees WHERE LAST_NAME = "Jones") AS jones
ON e.hire_date > jones.hire_date;