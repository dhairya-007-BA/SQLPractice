SELECT 
    country,
    SUM(CASE WHEN age > 30 THEN 1 ELSE 0 END) AS customers_over_30
FROM 
    customers
GROUP BY 
    country;
