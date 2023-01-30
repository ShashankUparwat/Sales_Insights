# Show all Customers
SELECT * 
FROM sales.customers;

# Total Number of Customers
Select count(*)  AS Total_Customers
FROM sales.customers;

#Distinct Customer Type
Select DISTINCT customer_type, COUNT(*) Total
FROM sales.customers
GROUP BY 1;

