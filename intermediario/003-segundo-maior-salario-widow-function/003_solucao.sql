WITH rank_salary AS (
    SELECT
        employee_id,
        name,
        salary,
        department_id,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employee
)
SELECT *
FROM rank_salary
WHERE salary_rank = 2;