# 📊 Sales Analysis Using SQL

## 📌 Project Overview

This project performs a basic sales analysis using SQL.
It calculates monthly revenue and order volume from an online sales dataset.

The goal of this project is to understand how SQL aggregation functions like `SUM()`, `COUNT()`, and `GROUP BY` are used to analyze business data.

---

## 🎯 Objective

* Create a sales database table
* Insert sample sales records
* Calculate monthly revenue
* Calculate total number of orders per month
* Display results in a structured format

---

## 🛠 Tools Used

* SQL
* SQLite (sqliteonline.com / MySQL Workbench)
* GitHub

---

## 🗂 Database Structure

**Table Name:** `online_sales`

| Column Name | Data Type     |
| ----------- | ------------- |
| order_id    | INT           |
| order_date  | DATE          |
| amount      | DECIMAL(10,2) |
| product_id  | INT           |

---

## 📥 Sample Data

```sql
INSERT INTO online_sales VALUES
(1, '2025-01-10', 500.00, 101),
(2, '2025-01-15', 700.00, 102),
(3, '2025-02-05', 800.00, 103),
(4, '2025-02-20', 500.00, 104),
(5, '2025-03-12', 650.00, 105);
```

---

## 📈 SQL Query Used

```sql
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
```

---

## 📊 Output

| Year | Month | Monthly Revenue | Order Volume |
| ---- | ----- | --------------- | ------------ |
| 2025 | 01    | 1200.00         | 2            |
| 2025 | 02    | 1300.00         | 2            |
| 2025 | 03    | 650.00          | 1            |

---

## 💡 Key Concepts Demonstrated

* Table creation
* Data insertion
* Aggregate functions (`SUM`, `COUNT`)
* Grouping data using `GROUP BY`
* Sorting results using `ORDER BY`
