SELECT
    c.name,
    SUM (o.amount) AS total_revenue,
    AVG (o.amount) AS average_order_value,
    COUNT (o.order_id) AS number_of_orders
FROM
    customers AS c
LEFT JOIN
    orders AS o
ON
    c.customer_id = o.customer_id
GROUP BY
    c.name
ORDER BY
    total_revenue DESC;

