
SELECT dept_no, dept_name AS Department, COUNT(*) AS Counts 
FROM {{ref('stg_employee_current')}} GROUP BY dept_no, dept_name
