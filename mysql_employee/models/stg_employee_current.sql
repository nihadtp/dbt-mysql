
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

SELECT 
E.emp_no, 
E.first_name, 
E.last_name, 
E.gender, 
D.dept_no,
D.dept_name,
DE.from_date,
DE.to_date
FROM 
{{source('landing', 'employees')}} E join 
{{source('landing', 'dept_emp') }} DE on E.emp_no = DE.emp_no AND DE.to_date = '9999-01-01'
JOIN {{source('landing', 'departments')}} D on DE.dept_no = D.dept_no


-- where id is not null
