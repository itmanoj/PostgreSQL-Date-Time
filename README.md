# PostgreSQL-Date-Time
# PostgreSQL Date & Time Functions with Product Table

## 📌 Project Overview

This project demonstrates how to use **PostgreSQL Date and Time functions** using a sample `products` table.
It includes examples of extracting date parts, formatting dates, calculating date differences, and working with intervals.

The goal of this project is to help beginners understand how to work with **date and time operations in PostgreSQL**.

---

## 🗂 Database Structure

### Table: `products`

| Column Name   | Data Type     | Description                 |
| ------------- | ------------- | --------------------------- |
| product_id    | SERIAL        | Unique ID for each product  |
| product_name  | VARCHAR(100)  | Name of the product         |
| category      | VARCHAR(50)   | Product category            |
| price         | NUMERIC(10,2) | Product price               |
| quantity      | INT           | Available stock             |
| added_date    | DATE          | Date when product was added |
| discount_rate | NUMERIC(5,2)  | Discount percentage         |

---

## 📦 Sample Data

The table contains example products such as:

* Laptop
* Smartphone
* Headphones
* Office Chair
* Desk
* Monitor
* Printer
* Mouse
* Keyboard
* Tablet

These records help demonstrate different **date queries and operations**.

---

# ⏱ PostgreSQL Date & Time Functions Used

## 1️⃣ Get Current Date & Time

```sql
SELECT NOW();
SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_DATE;
SELECT CURRENT_TIME;
```

These functions return the **current system date and time**.

---

## 2️⃣ Extract Year, Month, and Day

```sql
SELECT product_name,
EXTRACT(YEAR FROM added_date) AS year_added,
EXTRACT(MONTH FROM added_date) AS month_added,
EXTRACT(DAY FROM added_date) AS day_added
FROM products;
```

This query extracts specific parts of a date.

---

## 3️⃣ Calculate Time Difference

```sql
SELECT product_name,
AGE(CURRENT_DATE, added_date) AS age_since_added
FROM products;
```

This calculates how long ago a product was added.

---

## 4️⃣ Format Dates

```sql
SELECT product_name,
TO_CHAR(added_date, 'DD-MM-YYYY') AS formatted_date
FROM products;
```

Different formats can also be used:

```sql
TO_CHAR(added_date, 'DD-MM-YY')
TO_CHAR(added_date, 'DD-Month-YYYY')
```

---

## 5️⃣ Get Day of the Week

```sql
SELECT product_name, added_date,
DATE_PART('dow', added_date) AS day_of_week
FROM products;
```

Returns the **day number of the week**.

---

## 6️⃣ Truncate Date

```sql
SELECT product_name,
DATE_TRUNC('month', added_date) AS month_start
FROM products;
```

This returns the **first day of the month** for each date.

---

## 7️⃣ Add Time Interval

```sql
SELECT product_name,
added_date + INTERVAL '6 month' AS new_date
FROM products;
```

Adds **6 months to the original date**.

---

# 🚀 How to Run

1. Create the table
2. Insert sample data
3. Run the queries in **PostgreSQL / pgAdmin / any SQL editor**

---

# 🎯 Learning Objectives

After completing this project, you will understand:

* PostgreSQL Date & Time functions
* Extracting date components
* Formatting dates
* Calculating time differences
* Working with intervals
* Using DATE_TRUNC and DATE_PART

---

# 🛠 Technologies Used

* PostgreSQL
* SQL

---

