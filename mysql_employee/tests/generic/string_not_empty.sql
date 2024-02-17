{% test string_not_empty(model, column_name) %}
-- This test checks if the column is not empty
SELECT *
FROM {{model}} WHERE TRIM({{column_name}}) = ''

{% endtest %}