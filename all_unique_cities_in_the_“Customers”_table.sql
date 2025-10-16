SELECT name, city, country
FROM Customers
GROUP BY city, country
ORDER BY country ASC