SELECT
    c.name,c.city,
    AVG (o.amount) AS average_order_amount
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
GROUP BY
    c.name, c.city
ORDER BY
    average_order_amount DESC
LIMIT 1;
