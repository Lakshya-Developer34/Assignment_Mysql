/*
Tasks
1.
Create a table called Orders with columns: order_id, user_name, total_amount, and order_date. Insert 5 sample rows with different users and order amounts, including at least one NULL value for total_amount.
2.
Write a SQL query to count how many orders were placed by each user in the Orders table, displaying user_name and the number of orders as order_count.
3.
Write a SQL query to calculate the average total_amount of all orders in the Orders table, making sure to ignore any NULL values.
4.
Suppose you are building a Flipkart-style dashboard: Write a SQL query to find the highest and lowest order amounts (MAX and MIN) from the Orders table, and display both values in a single result row.
5.
Write a SQL query to calculate the total sales (SUM of total_amount) for all orders, but only include orders where total_amount is not NULL.<br><br><em><strong>Hint:</strong> Use a WHERE clause to filter out NULL values before applying the SUM function.</em>
*/


CREATE DATABASE assignment7;
USE assignment7;

-- Task 1
CREATE TABLE orders (
order_id INT PRIMARY KEY NOT NULL,
user_name VARCHAR(20),
total_amount INT,
order_date DATE
);
-- DROP TABLE orders;

INSERT INTO orders VALUES (1, "Lakshya" , 2000 , "2026-01-01"),
(2, "Raj" , 2500 , "2026-01-05"), 
(3, "Lalit" , 1500 , "2026-02-13"),
(4 , "Shyam" , 1200 , "2025-11-20"),
(5, "Lakshya" , 1300 , "2026-03-15");
INSERT INTO orders (order_id , user_name ,order_date ) VALUES (6 , "Ram" , "2024-10-10");

SELECT * FROM orders;

-- Task 2 
-- SELECT total_orders , user_name FROM orders GROUP BY user_name ;
SELECT COUNT(order_id) AS total_orders , user_name FROM orders GROUP BY user_name; 

-- Task 3
SELECT AVG(total_amount) AS average FROM orders WHERE total_amount IS NOT NULL;

-- Task 4 
SELECT MAX(total_amount) AS maximum_amount , MIN(total_amount) AS minimum_amount FROM orders;

-- Task 5 
SELECT SUM(total_amount) FROM orders WHERE total_amount IS NOT NULL;