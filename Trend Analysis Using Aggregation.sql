-- Sales Trend Analysis: Monthly Revenue and Order Volume

SELECT 
    EXTRACT(YEAR FROM OrderDate) AS Year,
    EXTRACT(MONTH FROM OrderDate) AS Month,
    SUM(Amount) AS Monthly_Revenue,
    COUNT(DISTINCT OrderID) AS Order_Volume
FROM mytable
GROUP BY Year, Month
ORDER BY Year, Month;
