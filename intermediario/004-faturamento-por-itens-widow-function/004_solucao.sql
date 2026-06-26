WITH cte AS (

  SELECT category, product, SUM(spend) as total_spend, 
    DENSE_RANK() OVER(
      PARTITION BY category
      ORDER BY SUM(spend) DESC
    ) as ranking
  FROM product_spend
  WHERE EXTRACT(YEAR FROM (transaction_date)) = 2022
  GROUP BY category, product
)

SELECT category, product, total_spend
FROM cte
WHERE ranking <= 2
ORDER BY category, total_spend DESC