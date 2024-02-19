SELECT 
E.dept_name, 
ROUND(AVG(S.salary), 2) AS Average_Salary 
FROM {{ref('stg_salary_curr')}} S 
JOIN {{ref('stg_employee_current')}} E ON S.emp_no = E.emp_no
GROUP BY E.dept_name 
ORDER BY Average_Salary DESC LIMIT 10

