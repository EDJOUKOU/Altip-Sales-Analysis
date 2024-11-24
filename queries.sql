-- 1.	Customer Analysis:
-- o	Which customer types (e.g., retail, corporate) contribute the most to sales revenue? Is there a noticeable drop in a specific type?
-- Customer type
SELECT 
    customer_type, 
    sum(sales_qty) AS tot_qty_sale, 
    SUM(CASE 
           WHEN currency = 'USD' THEN sales_amount * 85 
           ELSE sales_amount 
       END) AS tot_Revs 
FROM 
    transactions T LEFT OUTER JOIN customers C
ON 
    C.customer_code = T.customer_code
GROUP BY 
    customer_type
ORDER BY 
	tot_Revs  DESC;
-- customer name:
SELECT 
custmer_name, 
sum(sales_qty) AS tot_sales, 
SUM(CASE 
           WHEN currency = 'USD' THEN sales_amount * 85 
           ELSE sales_amount 
       END) AS tot_Revs 
FROM 
    transactions T LEFT OUTER JOIN customers C
ON 
    C.customer_code = T.customer_code
WHERE 
   year(order_date) = 2017
GROUP BY 
   custmer_name
ORDER BY 
   tot_Revs DESC
    LIMIT 5;
-- Sales evolution over time per customer type:
SELECT 
   customer_type,
   SUM(sales_qty) AS tot_sales, 
   SUM(CASE 
           WHEN currency = 'USD' THEN sales_amount * 85 
           ELSE sales_amount 
       END) AS tot_Revs , 
  year(date) AS year_time
FROM 
   transactions T LEFT OUTER JOIN
   customers C 
ON
   C.customer_code = T.customer_code
   LEFT OUTER JOIN date D 
ON
   T.order_date = D.date
GROUP BY 
   customer_type, 
   year_time
ORDER BY 
   year_time;
-- 2.	Product Performance:
-- o	What are the best-performing and worst-performing product types regarding sales quantity and revenue?
SELECT 
    product_type, 
   SUM(sales_qty) AS tot_sales, 
   SUM(CASE 
           WHEN currency = 'USD' THEN sales_amount * 85 
           ELSE sales_amount 
       END) AS tot_Revs
FROM 
   products P LEFT OUTER JOIN transactions T
ON 
   P.product_code = T.product_code
WHERE year(order_date) = 2017
GROUP BY 
   product_type
ORDER BY 
   tot_Revs DESC
-- o What are the best-performing and worst-performing products regarding sales quantity and revenue over the years?
SELECT
   P.product_code, 
   SUM(sales_qty) AS tot_sales, 
   SUM(CASE 
           WHEN currency = 'USD' THEN sales_amount * 85 
           ELSE sales_amount 
       END) AS tot_Revs
FROM 
   products P 
LEFT OUTER JOIN transactions T
ON 
   P.product_code = T.product_code
WHERE 
   YEAR(order_date) = 2018
GROUP BY 
   P.product_code
ORDER BY 
   tot_Revs DESC
LIMIT 5;
-- 3.	Market Trends:
-- o	Which markets or zones are showing a significant decline in sales? Are there any regional patterns?
SELECT 
   M.markets_name, 
   YEAR(T.order_date) AS year_date, 
   sum(T.sales_qty) AS tot_sales, 
SUM(CASE 
           WHEN currency = 'USD' THEN sales_amount * 85 
           ELSE sales_amount 
       END) AS tot_Revs 
FROM 
   markets M
LEFT OUTER JOIN 
   transactions T
ON 
   M.markets_code = T.market_code
GROUP BY 
   M.markets_name, 
YEAR(T.order_date)
ORDER BY 
   year_date;
-- 4.	Time-Based Analysis:
-- o	How have sales trends changed over the past months or years? Are there specific periods (e.g., months or quarters) with significant declines?
-- evolution of sales by year
SELECT 
   SUM(sales_qty) AS tot_sales, 
   SUM(CASE 
           WHEN currency = 'USD' THEN sales_amount * 85 
           ELSE sales_amount 
       END) AS tot_Revs, 
   YEAR(order_date) AS year_date
FROM 
   transactions
GROUP BY
   year_date 
ORDER BY 
   tot_Revs DESC;
