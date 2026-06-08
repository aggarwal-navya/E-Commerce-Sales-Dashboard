USE project;
SHOW TABLES;
SELECT COUNT(*)
FROM `amazon (1)`;
RENAME TABLE `amazon (1)` TO amazon_sales;
SELECT *
FROM amazon_sales
LIMIT 10;
SELECT COUNT(*) AS total_rows
FROM amazon_sales;
SELECT
COUNT(*) AS total_rows,
COUNT(OrderID) AS orderid_count,
COUNT(CustomerID) AS customerid_count,
COUNT(ProductName) AS product_count,
COUNT(TotalAmount) AS revenue_count
FROM amazon_sales;

SELECT COUNT(DISTINCT CustomerID)
AS total_customers
FROM amazon_sales;

SELECT COUNT(DISTINCT ProductName)
AS total_products
FROM amazon_sales;
SELECT
ROUND(SUM(TotalAmount),2)
AS Total_Revenue
FROM amazon_sales;
SELECT
COUNT(DISTINCT OrderID)
AS Total_Orders
FROM amazon_sales;
SELECT
ROUND(AVG(TotalAmount),2)
AS Avg_Order_Value
FROM amazon_sales;
SELECT
Category,
ROUND(SUM(TotalAmount),2) AS Revenue
FROM amazon_sales
GROUP BY Category
ORDER BY Revenue DESC;

SELECT
Brand,
ROUND(SUM(TotalAmount),2) AS Revenue
FROM amazon_sales
GROUP BY Brand
ORDER BY Revenue DESC;

SELECT
ProductName,
ROUND(SUM(TotalAmount),2) AS Revenue
FROM amazon_sales
GROUP BY ProductName
ORDER BY Revenue DESC
LIMIT 10;

SELECT
OrderStatus,
COUNT(*) AS Orders
FROM amazon_sales
GROUP BY OrderStatus;

SELECT
PaymentMethod,
COUNT(*) AS Orders,
ROUND(SUM(TotalAmount),2) AS Revenue
FROM amazon_sales
GROUP BY PaymentMethod
ORDER BY Revenue DESC;

SELECT
City,
ROUND(SUM(TotalAmount),2) AS Revenue
FROM amazon_sales
GROUP BY City
ORDER BY Revenue DESC
LIMIT 10;

SELECT
YEAR(OrderDate) AS Year,
MONTH(OrderDate) AS Month,
ROUND(SUM(TotalAmount),2) AS Revenue
FROM amazon_sales
GROUP BY Year, Month
ORDER BY Year, Month;

SELECT *
FROM amazon_sales;