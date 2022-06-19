/*---------------------------------NOTES-----------------------------------------------------
1. You can use window functions in SELECT and ORDER BY. 
   You cannot use window functions in WHERE, GROUP BY, or HAVING. Use a subquery or a WITH query to get around this limitation.
   
2. #using system function now()
   SELECT DATE_FORMAT(NOW(),'%M %d, %Y');
   SELECT DATE_FORMAT(NOW(),'%b %d, %Y');
   SELECT DATE_FORMAT(NOW(),'%c-%d-%Y');
   SELECT DATE_FORMAT(NOW(),'%c-%d-%y');
   SELECT DATE_FORMAT(NOW(),'%d/%c/%Y');
   SELECT DATE_FORMAT(NOW(),'%d/%c/%y');
   SELECT DATE_FORMAT(NOW(),'%b %d, %Y %h:%i %p');
   SELECT DATE_FORMAT(NOW(),'%M %d, %Y %h:%i %p');

   OUTPUT:
   December 25, 2013
   Dec 25, 2013
   12-25-2013
   12-25-2013
   25/12/2013
   25/12/13
   Dec 25, 2013 10:40 PM
   December 25, 2013 10:40 PM
   

------------------------------------------------------------------------------------------*/

-- Write a SQL query to find the nth highest salary from employee table. 
-- Example: finding 3rd highest salary from employee table

SELECT emp_id, Salary
FROM employees
ORDER by Salary desc
LIMIT 1,2;

-- OR 

SELECT emp_id,salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 2;


-- 2.Query to find duplicate rows in table?
select emp_id,count(emp_id) as cnt
from employees
group by emp_id
having cnt > 1;



