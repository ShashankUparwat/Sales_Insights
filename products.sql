# Show all Products
SELECT * 
FROM sales.products;

# Distinct Products sold in Chennai
SELECT DISTINCT product_code 
FROM sales.transactions 
WHERE market_code='Mark001';

# Distinct Product Types
SELECT DISTINCT product_type, COUNT(*) as Total 
FROM sales.products
GROUP BY 1;
