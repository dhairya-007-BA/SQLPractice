SELECT 
    c.name,
    SUM(o.amount) AS total_spending
FROM 
    customers AS c
JOIN 
    orders AS o 
ON 
    c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    total_spending DESC
LIMIT 3;