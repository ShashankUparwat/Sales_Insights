# Show all Dates
SELECT *
FROM sales.date;

# Total revenue by Years
SELECT DISTINCT year, SUM(sales.transactions.sales_amount) as Total_Revenue
FROM sales.date INNER JOIN sales.transactions ON sales.transactions.order_date=sales.date.date 
GROUP BY 1;
