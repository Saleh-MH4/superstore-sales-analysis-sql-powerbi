/* Superstore Sales Analysis
   SQL views used for Power BI dashboards
*/
--Category_performance

SELECT 
    Category,
    Sub_Category,
    COUNT(DISTINCT Order_ID) AS Orders,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Pct,
    SUM(Quantity) AS Units_Sold
FROM dbo.ee
GROUP BY Category, Sub_Category

--Category_summary

SELECT 
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM dbo.ee
GROUP BY Category

--Customer_segment

SELECT 
    Segment,
    COUNT(DISTINCT Customer_ID) AS Customers,
    COUNT(DISTINCT Order_ID) AS Orders,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Sales), 2) AS Avg_Order_Value
FROM dbo.ee
GROUP BY Segment

--Monthly_trends

SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    CONCAT(YEAR(Order_Date), '-', FORMAT(MONTH(Order_Date), '00')) AS Year_Month,
    ROUND(SUM(Sales),2) AS Monthly_Revenue,
    ROUND(SUM(Profit), 2)  AS Monthly_Profit
FROM dbo.ee
GROUP BY YEAR(Order_Date), MONTH(Order_Date)

--Overall_KPIs

SELECT 
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) , 4) AS Overall_Profit_Margin_Pct,
    ROUND(AVG(Sales), 3) AS Avg_Order_Value,
    SUM(Quantity) AS Total_Units_Sold
FROM dbo.ee;

--State_performance

SELECT 
    State,
    Region,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit),2 ) AS Total_Profit
FROM dbo.ee
GROUP BY State, Region;