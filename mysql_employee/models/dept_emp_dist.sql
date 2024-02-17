
SELECT dept_no, dept_name AS Department, COUNT(*) AS Counts 
FROM {{ref('stg_employee')}} GROUP BY dept_no, dept_name
