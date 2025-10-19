SELECT 
    c.country,
    COALESCE(SUM(o.amount),0) AS total_revenue
FROM 
    customers AS c
LEFT JOIN 
    orders AS o
ON 
    c.customer_id = o.customer_id
GROUP BY 
    c.country;