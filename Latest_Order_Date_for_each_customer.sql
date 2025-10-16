SELECT 
    c.name,
    MAX (o.order_date) AS latest_order_date
    FROM customers AS c
    RIGHT JOIN orders AS o
    ON c.customer_id = o.customer_id
    GROUP BY c.name
    ORDER BY latest_order_date DESC;
