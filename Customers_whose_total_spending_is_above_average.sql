SELECT 
    c.name,
    SUM(o.amount) AS total_spending
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name
HAVING 
    SUM(o.amount) > (
        SELECT AVG(total_spending)
        FROM (
            SELECT 
                SUM(amount) AS total_spending
            FROM orders
            GROUP BY customer_id
        )
    )
ORDER BY 
    total_spending DESC;
