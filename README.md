# Task 6 - Sales Trend Analysis Using Aggregations

## ✅ Objective:
Analyze monthly sales trends by computing:
- Total Monthly Revenue
- Monthly Order Volume

## 🧰 Tools Used:
- SQL (PostgreSQL/MySQL compatible)
- Dataset: `online_sales` (loaded from online_sales.sql)

## 📊 SQL Query:
```sql
SELECT 
    EXTRACT(YEAR FROM OrderDate) AS Year,
    EXTRACT(MONTH FROM OrderDate) AS Month,
    SUM(Amount) AS Monthly_Revenue,
    COUNT(DISTINCT OrderID) AS Order_Volume
FROM mytable
GROUP BY Year, Month
ORDER BY Year, Month;
