WITH cte AS
(
    SELECT queue.*,
    SUM(weight)OVER(ORDER BY turn) AS total_weight
    FROM queue
)
SELECT person_name
FROM cte WHERE total_weight<=1000
ORDER BY total_weight DESC LIMIT 1;