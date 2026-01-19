# superstore-sales-analysis-sql-powerbi
 Analyze retail sales performance (2014-2017) to identify revenue trends, product profitability, and geographic opportunities USING SQL and power bi 
# 📊 Superstore Sales Analysis Dashboard

> Interactive SQL and Power BI dashboard analyzing 4 years of retail sales data to identify $100K+ in profit optimization opportunities.

---

## 🎯 Project Overview

Analyzed 10,000+ retail transactions (2014-2017) to uncover profitability drivers and provide actionable business recommendations.

**Key Results:**
- 💰 $2.30M revenue, $286.8K profit (12.49% margin)
- 📊 Identified $100K+ profit improvement opportunity
- ⚠️ Discovered critical pricing issue in Furniture category (2% margin)
- 🎯 Technology drives 51% of profit despite only 18% of volume

---

## 🛠️ Tools Used

**SQL Server** • **Power BI** • **Excel**

---

## 📊 Dashboard Features

### Page 1: Executive Overview
- KPI cards (Revenue, Profit, Margin, Customers)
- Monthly trend analysis with dual Y-axis
- Geographic performance heat map
- Category profitability comparison

<img width="1453" height="817" alt="Page1_Executive_Overview" src="https://github.com/user-attachments/assets/cbf15295-60d8-4127-926d-ed563d2444ef" />


  

### Page 2: Product Performance Deep Dive
- Hierarchical category/sub-category breakdown
- Detailed metrics table with 9 KPIs
- Profit margin comparison across 17 sub-categories
- Sales volume distribution

<img width="1439" height="806" alt="Page2_Product_Analysis" src="https://github.com/user-attachments/assets/21e6fca2-1cd3-4bab-aa33-00e0b7a837a4" />



## 🔍 SQL Analysis

**6 Analytical Queries:**
1. Overall business KPIs
2. Monthly revenue/profit trends
3. Geographic performance by state
4. Category-level summary
5. Sub-category detailed metrics
6. Customer segmentation analysis

**Sample Query:**
```sql
-- Monthly Trends Analysis
SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Revenue,
    SUM(Profit) AS Monthly_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Margin_Pct
FROM Orders
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;
```


([📂 View All SQL Queries](https://github.com/Saleh-MH4/superstore-sales-analysis-sql-powerbi/blob/main/superstore_powerbi_views.sql))

---

## 💡 Key Findings

**Product Performance:**
- Technology: $145K profit (51% of total) at 15% margin ✅
- Office Supplies: $122K profit, stable performer ✅
- Furniture: Only $10K profit at 2% margin ⚠️

**Geographic Insights:**
- Top states: California, New York, Texas
- Expansion opportunities in Central/Southeast regions

**Operational Issues:**
- High monthly volatility indicates seasonal demand patterns
- Tables sub-category shows -8% margin (net loss)

---



---

## 📚 Skills Demonstrated

✅ SQL queries & aggregations  
✅ Power BI dashboard development  
✅ DAX measures & calculations  
✅ Data visualization best practices  
✅ Business insight generation  
✅ Strategic recommendations  




## 👤 Contact

**[ٍSaleh Misfir]**  
📧Email: csusbhelz@gmail.com 
💼 [LinkedIn](https://www.linkedin.com/in/saleh-m-708a8320a/) 


---
