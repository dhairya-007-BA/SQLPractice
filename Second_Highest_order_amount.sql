SELECT DISTINCT amount
FROM (
    SELECT 
        amount,
        DENSE_RANK() OVER (ORDER BY amount DESC) AS rank
    FROM orders
)
WHERE rank = 2;
