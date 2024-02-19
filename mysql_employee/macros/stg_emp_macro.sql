{% macro create_emp_stg(model) %}
SELECT E.first_name, E.last_name, E.gender, m.* FROM 
{{ source('landing', 'employees') }} E JOIN
{{ source('landing', model) }} m ON E.emp_no = m.emp_no AND m.to_date = '9999-01-01'
{% endmacro %}
