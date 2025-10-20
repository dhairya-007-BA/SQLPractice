SELECT 
    c.name,
    SUM(o.amount) AS total_spending,
    CASE
        WHEN SUM(o.amount) > 500 THEN 'High Value'
        WHEN SUM(o.amount) BETWEEN 200 AND 500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_category
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    total_spending DESC;
