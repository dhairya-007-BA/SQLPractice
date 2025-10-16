SELECT 
    c.name,
    c.city,
    c.country
FROM 
    customers AS c
LEFT JOIN 
    orders AS o
ON 
    c.customer_id = o.customer_id
WHERE 
    o.order_id IS NULL;
