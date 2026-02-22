📊 Sales Trend Analysis Using SQL


📌 Project Overview

This project focuses on analyzing monthly revenue and order volume using SQL aggregation techniques.

The goal is to identify sales trends over time and extract meaningful business insights from transactional data.

This task was completed as part of a Data Analyst Internship – Task 6.


🎯 Objective

Analyze monthly revenue

Calculate order volume

Identify top-performing months

Perform profit and category analysis

Understand time-based sales trends


🛠 Tools & Technologies Used

🗄 MySQL

💻 MySQL Workbench

📊 SQL (Joins, Aggregations, Date Functions)


🗂 Dataset Structure

The database contains two tables:

1️⃣ orders

Column Name

Description

order_id

Unique order identifier

order_date

Date of order

customer_name

Customer name

state

Customer state

city

Customer city

2️⃣ details

Column Name

Description

order_id

Foreign key from orders

amount

Sales amount

profit

Profit earned

quantity

Quantity sold

category

Product category

sub_category

Product sub-category

payment_mode

Mode of payment


🔗 Data Relationship

orders.order_id is linked with details.order_id

INNER JOIN is used for combining sales and order information


📈 Key Analysis Performed

✅ 1. Monthly Revenue Analysis

Used SUM(amount)

Grouped by YEAR(order_date) and MONTH(order_date)

✅ 2. Monthly Order Volume

Used COUNT(DISTINCT order_id)

Measured total number of orders per month

✅ 3. Top 3 Months by Sales

Sorted using ORDER BY total_revenue DESC

Used LIMIT 3

✅ 4. Monthly Profit Analysis

Used SUM(profit)

Identified profitable periods

✅ 5. Category-wise Sales

Grouped by category

Measured revenue per product category

✅ 6. Payment Mode Analysis

Compared revenue by payment method


📚 SQL Concepts Used

✔ SELECT

✔ INNER JOIN

✔ GROUP BY

✔ ORDER BY

✔ LIMIT

✔ Aggregate Functions

SUM()

COUNT()

COUNT(DISTINCT)

AVG()

✔ Date Functions

YEAR()

MONTH()

MONTHNAME()


📊 Sample Business Insights

Identified peak revenue months

Measured monthly growth trend

Determined most profitable months

Analyzed preferred payment modes

Compared sales across states


🎓 Learning Outcomes

Through this task, I learned:

How to analyze time-based sales data

How to use aggregation functions effectively

Difference between COUNT(*) and COUNT(DISTINCT)

Importance of GROUP BY and ORDER BY

Writing structured and optimized SQL queries


📁 Repository Contents

📄 SQL Script File

📊 Datasets

📝 README Documentation


🚀 How to Run

Import dataset into MySQL

Create database

Execute provided SQL script

View results in MySQL Workbench
