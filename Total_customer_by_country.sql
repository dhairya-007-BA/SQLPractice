SELECT country, COUNT(*) AS total_customers
From customers
GROUP BY country;
