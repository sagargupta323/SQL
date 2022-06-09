-- 1> Write a SQL query to find the nth highest salary from employee table. 
-- Example: finding 3rd highest salary from employee table

SELECT emp_id, Salary
FROM employees
ORDER by Salary desc
LIMIT 2,1;
