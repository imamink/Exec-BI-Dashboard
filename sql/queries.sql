-- Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

-- Profit by Segment
SELECT segment, SUM(profit) AS total_profit
FROM superstore
GROUP BY segment;

-- Category Performance
SELECT category,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit,
       AVG(profit_margin) AS avg_margin
FROM superstore
GROUP BY category;

-- Shipping Efficiency
SELECT region,
       AVG(days_to_ship) AS avg_shipping_time
FROM superstore
GROUP BY region;