# Show all Transactions
SELECT * 
FROM sales.transactions;

# Total Transactions
SELECT COUNT(*) 
FROM sales.transactions;

# Transactions for Chennai Market
SELECT * 
FROM sales.transactions 
WHERE market_code='Mark001';

# Total transactions in Chennai
SELECT COUNT(*) 
FROM sales.transactions 
WHERE market_code='Mark001';

# Transactions in INR
SELECT * 
FROM sales.transactions
WHERE currency = 'INR';

# Transactions in USD
SELECT * 
FROM sales.transactions
WHERE currency = 'USD';

# Total Sales in INR and USD
SELECT DISTINCT currency, SUM(sales_amount) as Total_Sales
FROM sales.transactions
GROUP BY 1;

# Transaction in 2020
SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
WHERE date.year=2020;

# Total revenue in 2020
SELECT SUM(sales.transactions.sales_amount) as Total_Revenue
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
WHERE date.year=2020;

# Total revenue in January 2020
SELECT SUM(sales.transactions.sales_amount) as Total_Revenue
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
WHERE date.year=2020 AND date.month_name = 'January';



