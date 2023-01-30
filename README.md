# Sales_Insights

Analyse the sales dataset of a hardware company using SQL and visualise in PowerBI.

MySQL
PowerBI

#### Show all Customers
```SQL
SELECT * 
FROM sales.customers;
```
#### Total Number of Customers
```SQL
Select count(*)  AS Total_Customers
FROM sales.customers;
```

#### Distinct Customer Type
```SQL
Select DISTINCT customer_type, COUNT(*) Total
FROM sales.customers
GROUP BY 1;
```

#### Show all Transactions
```SQL
SELECT * 
FROM sales.transactions;
```

#### Total Transactions
```SQL
SELECT COUNT(*) 
FROM sales.transactions;
```

#### Transactions for Chennai Market
```SQL
SELECT * 
FROM sales.transactions 
WHERE market_code='Mark001';
```

#### Total transactions in Chennai
```SQL
SELECT COUNT(*) 
FROM sales.transactions 
WHERE market_code='Mark001';
```

#### Transactions in INR
```SQL
SELECT * 
FROM sales.transactions
WHERE currency = 'INR';
```

#### Transactions in USD
```SQL
SELECT * 
FROM sales.transactions
WHERE currency = 'USD';
```

#### Total Sales in INR and USD
```SQL
SELECT DISTINCT currency, SUM(sales_amount) as Total_Sales
FROM sales.transactions
GROUP BY 1;
```

#### Transaction in 2020
```SQL
SELECT sales.transactions.*, sales.date.* 
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
WHERE date.year=2020;
```

#### Total revenue in 2020
```SQL
SELECT SUM(sales.transactions.sales_amount) as Total_Revenue
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
WHERE date.year=2020;
```

#### Total revenue in January 2020
```SQL
SELECT SUM(sales.transactions.sales_amount) as Total_Revenue
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date 
WHERE date.year=2020 AND date.month_name = 'January';
```

#### Show all Products
```SQL
SELECT * 
FROM sales.products;
```

#### Distinct Products sold in Chennai
```SQL
SELECT DISTINCT product_code 
FROM sales.transactions 
WHERE market_code='Mark001';
```

#### Distinct Product Types
```SQL
SELECT DISTINCT product_type, COUNT(*) as Total 
FROM sales.products
GROUP BY 1;
```

#### Show all Dates
```SQL
SELECT *
FROM sales.date;
```

#### Total revenue by Years
```SQL
SELECT DISTINCT year, SUM(sales.transactions.sales_amount) as Total_Revenue
FROM sales.date INNER JOIN sales.transactions ON sales.transactions.order_date=sales.date.date 
GROUP BY 1;
```
