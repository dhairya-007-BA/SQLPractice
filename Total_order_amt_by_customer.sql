SELECT 
    c.name,
    SUM(o.amount) AS total_amount
FROM 
    customers AS c
JOIN 
    orders AS o
ON 
    c.customer_id = o.customer_id
GROUP BY 
    c.name;