SELECT 
    strftime('%m', order_date) AS month,
    strftime('%Y', order_date) AS year,
    SUM(amount) AS total_revenue
FROM 
    orders
WHERE 
    strftime('%Y', order_date) = '2023'
GROUP BY 
    month, year
ORDER BY 
    month;