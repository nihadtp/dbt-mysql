SELECT 
emp_no, 
salary 
FROM {{source('landing', 'salaries')}} 
WHERE to_date = '9999-01-01'