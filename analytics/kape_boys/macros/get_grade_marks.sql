{#
    This macro returns the marks of each assigned grade A, B, C, D, E...
#}

{% macro get_grade_marks(grade) -%}
    {% if grade == 'A' %}
        100
    {% elif grade == 'B' %}
        90
    {% elif grade == 'C' %}
        80
    {% elif grade == 'D' %}
        70
    {% elif grade == 'E' %}
        60
    {% elif grade == 'F' %}
        50
    {% else %}
        0
    {% endif %}
{%- endmacro %}
