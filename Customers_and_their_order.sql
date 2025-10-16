SELECT name, city, country, order_id, amount
FROM 
    customers AS c
JOIN 
    orders AS o
ON 
    c.customer_id = o.customer_id
ORDER BY name ASC
