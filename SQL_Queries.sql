-- View Dataset
SELECT * FROM sales_dataset;

-- Total Records
SELECT COUNT(*) AS Total_Records
FROM sales_dataset;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM sales_dataset;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM sales_dataset;

-- Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM sales_dataset;

-- Sales by Region
SELECT Region,
SUM(Sales) AS Total_Sales
FROM sales_dataset
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Profit by Category
SELECT Category,
SUM(Profit) AS Total_Profit
FROM sales_dataset
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Top 10 Customers
SELECT Customer_Name,
SUM(Sales) AS Total_Sales
FROM sales_dataset
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Top 10 Products
SELECT Product_Name,
SUM(Sales) AS Total_Sales
FROM sales_dataset
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Sales Trend
SELECT YEAR(Order_Date) AS Year,
MONTH(Order_Date) AS Month,
SUM(Sales) AS Total_Sales
FROM sales_dataset
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;