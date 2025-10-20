# SQLPractice AI Agent Instructions

## Project Overview
This is a SQL practice project focusing on customer and order analysis using SQLite. The project consists of SQL queries that analyze relationships between customers and their orders to derive business insights.

## Data Structure
- **customers.csv**: Customer information (customer_id, name, city, country, age)
- **orders.csv**: Order transactions (order_id, customer_id, order_date, amount)
- Primary key relationship: customers.customer_id = orders.customer_id

## Query Conventions
1. Use meaningful aliases for tables (e.g., `customers AS c`, `orders AS o`)
2. Structure queries with clear formatting:
   - Each clause on a new line
   - Indentation for readability
   - Uppercase for SQL keywords
   ```sql
   SELECT 
       c.name,
       SUM(o.amount) AS total_spending
   FROM 
       customers AS c
   JOIN 
       orders AS o 
   ON 
       c.customer_id = o.customer_id
   ```

## File Naming Convention
- Use descriptive names that indicate the query's purpose
- Words separated by underscores
- All lowercase
- End with `.sql` extension
Example: `customer_in_canada.sql`, `total_revenue_per_country.sql`

## Development Environment
- IDE: VS Code with SQLTools extension
- Database: SQLite
- Data files are in CSV format

## Common Query Patterns
- Joins between customers and orders tables
- Aggregations using GROUP BY and aggregate functions (SUM, AVG)
- Filtering with WHERE clauses
- Sorting with ORDER BY
- Limiting results with LIMIT

## Pro Tips
- Always check for JOIN conditions to ensure proper data relationships
- Consider NULL handling when dealing with customers without orders
- Use table aliases consistently throughout queries
- Include clear column aliases for calculated fields