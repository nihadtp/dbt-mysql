
SELECT E.title, ROUND(AVG(S.salary), 2) AS `Average Salary` FROM {{ref('stg_emp_title')}} E JOIN 
{{source('landing', 'salaries')}} S ON E.emp_no = S.emp_no AND S.to_date = '9999-01-01'
GROUP BY E.title