SELECT EMP_ID, EMP_NAME FROM EMPLOYEE;

SELECT * FROM employee;

SELECT
	emp_no,
	emp_name,
	phone
FROM
	employee 
ORDER BY
	SALARY DESC
LIMIT 1;

SELECT * FROM job;
	
SELECT 
	emp_no,
	emp_name,
	phone,
	job_name
FROM
	employee 
JOIN
	job ON job.JOB_CODE = employee.JOB_CODE 
WHERE
	emp_name = "선동일";
	
SHOW TABLEs;

SELECT * FROM department ;

SELECT * FROM location ;

SELECT * FROM nation ;

SELECT * FROM sal_grade ;

SELECT
*
FROM 
employee 
WHERE
emp_id = '210'
AND
emp_name = ''
OR 1=1
AND
emp_id = '200';
