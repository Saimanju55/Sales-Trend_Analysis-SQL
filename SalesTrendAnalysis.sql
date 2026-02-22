use sales_db

-- Monthly revenue & Order volume
SELECT YEAR(o.order_date) AS year,MONTH(o.order_date) AS month,
SUM(d.amount) AS monthly_revenue,
COUNT(DISTINCT o.order_id) AS order_volume FROM orders o
JOIN details d ON o.order_id = d.order_id
GROUP BY YEAR(o.order_date), MONTH(o.order_date)
ORDER BY year, month;

-- Monthly revenue with month name
SELECT YEAR(o.order_date) AS year,
MONTH(o.order_date) AS month_name,
SUM(d.amount) AS revenue FROM orders o
JOIN details d ON o.order_id = d.order_id
GROUP BY YEAR(o.order_date), MONTH(o.order_date)
ORDER BY year, MONTH(o.order_date);

-- Top 3 months by sales
SELECT YEAR(o.order_date) AS year,
    MONTH(o.order_date) AS month,
    SUM(d.amount) AS total_revenue
FROM orders o
JOIN details d 
ON o.order_id = d.order_id
GROUP BY YEAR(o.order_date), MONTH(o.order_date)
ORDER BY total_revenue DESC
LIMIT 3;

-- Monthly profit by sales
SELECT 
    YEAR(o.order_date) AS year,
    MONTH(o.order_date) AS month,
    SUM(d.profit) AS monthly_profit
FROM orders o
JOIN details d 
ON o.order_id = d.order_id
GROUP BY YEAR(o.order_date), MONTH(o.order_date)
ORDER BY year, month;

-- Category wise monthly sales
SELECT 
    YEAR(o.order_date) AS year,
    MONTH(o.order_date) AS month,
    d.category,
    SUM(d.amount) AS revenue
FROM orders o
JOIN details d 
ON o.order_id = d.order_id
GROUP BY YEAR(o.order_date), MONTH(o.order_date), d.category
ORDER BY year, month;

-- Payment mode analysis
SELECT 
    d.payment_mode,
    SUM(d.amount) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN details d 
ON o.order_id = d.order_id
GROUP BY d.payment_mode
ORDER BY total_revenue DESC;

-- State wise sales
SELECT 
    o.state,
    SUM(d.amount) AS total_revenue,
    SUM(d.profit) AS total_profit
FROM orders o
JOIN details d 
ON o.order_id = d.order_id
GROUP BY o.state
ORDER BY total_revenue DESC;

-- 