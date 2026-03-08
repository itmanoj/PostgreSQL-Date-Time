CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);

Select * From products

-- Current date time 

Select Now() as current_datetime

SELECT NOW();

SELECT CURRENT_TIMESTAMP;

SELECT CURRENT_DATE as Current_date
SELECT CURRENT_DATE As today_date
SELECT CURRENT_Time as Current_time
SELECT CURRENT_date

-- Extract the Years Month and Day from the added_date column 
Select product_name, 
Extract (Year from added_date) As Years_added,
Extract (Month from added_date) As Month_added,
Extract (Day from added_date) As Day_added
FRom products; 

--  Calculate the time difference beteen added_date and today_date

Select product_name,
Age(Current_Date, added_date) As age_since_added
From products;

-- Formate added date in the custom formate (DD-Month_YYYY)
Select product_name,
To_Char(added_date, 'DD-MM-YYYY') As Formated_date
From products;

OR 

Select product_name,
To_Char(added_date, 'DD-MM-YYYY')
From products;

OR 

Select product_name,
To_Char(added_date, 'DD-MM-YY') As Formated_date
From products;

-- If you need full month Name
Select product_name,
To_Char(added_date, 'DD-Month-YYYY') As Formated_date
From products;

-- Date_part() - Get Specific part 
-- Extract the day of the week from added_date

Select product_name, added_date,
Date_part('dow',added_date) as day_of_week
From products;


-- Truncate Formula

Select product_name, 
Date_Trunc('month', added_date) as Month_start,
From products 

-- Truncate added_date, start_month

Select product_name, 
Date_Trunc('month', added_date) as week_start,
Date_part('isodow',added_date) as day_of_week
From products 

-- Interval Add OR Substract Time intervals

Select product_name,
added_date + Interval '6 month' as new_sate
From products


-- Current_Time

Select Current_Time as Current_time

-- Current_Date

Select Current_Date as Current_Date










