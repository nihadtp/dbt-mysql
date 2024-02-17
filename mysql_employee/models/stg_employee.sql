
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

SELECT E.*, D.* FROM 
{{source('landing', 'employees')}} E join 
{{source('landing', 'dept_emp') }} DE on E.emp_no = DE.emp_no 
JOIN {{source('landing', 'departments')}} D on DE.dept_no = D.dept_no
/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
