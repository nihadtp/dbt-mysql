WITH TENURE AS (
    SELECT 
    E.dept_no, 
    E.dept_name, 
    DATEDIFF(E.to_date, E.from_date) AS tenure 
    FROM {{ref('stg_employee')}} E 
    WHERE E.to_date != '9999-01-01'
)

SELECT 
dept_name, 
AVG(tenure) AS avg_tenure 
FROM TENURE GROUP BY dept_name
