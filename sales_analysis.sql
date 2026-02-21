-- Create table
CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

-- Insert data
INSERT INTO online_sales VALUES
(1, '2025-01-10', 500.00, 101),
(2, '2025-01-15', 700.00, 102),
(3, '2025-02-05', 800.00, 103),
(4, '2025-02-20', 500.00, 104),
(5, '2025-03-12', 650.00, 105);

-- Monthly Sales Analysis
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;