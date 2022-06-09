-- Write a SQL query to find the nth highest salary from employee table. 
-- Example: finding 3rd highest salary from employee table

SELECT emp_id, Salary
FROM employees
ORDER by Salary desc
LIMIT 1,2;


-- OR 

SELECT 
    emp_id,
    salary
FROM
    employees
ORDER BY 
	salary DESC
LIMIT 1 OFFSET 2;







