/*
Tasks
1.
Create a table called Orders with columns: order_id, user_id, payment_method, and amount. Insert at least 8 sample records representing different users and payment methods (like UPI, Card, Wallet, COD).
2.
Write an SQL query to count how many orders were placed using each payment_method in the Orders table, similar to how Zomato shows payment breakdown in analytics.
3.
Write an SQL query to find the total amount spent by each user_id in the Orders table. Display user_id and their total spend.
4.
Write an SQL query to show only those payment methods where the average order amount is greater than 300, using GROUP BY and HAVING.<br><br><em><strong>Hint:</strong> Use AVG(amount) in your HAVING clause.</em>
5.
Explain the difference between WHERE and HAVING by giving one example query for each, using the Orders table. Your examples should show a scenario where WHERE and HAVING filter different things.
*/





CREATE DATABASE assignment8;
USE assignment8;

-- Task 1

CREATE TABLE orders(
order_id INT PRIMARY KEY NOT NULL, 
user_id INT NOT NULL, 
payment_method VARCHAR(20), 
amount INT
);

INSERT INTO Orders (order_id, user_id, payment_method, amount) VALUES
(101, 1, 'UPI', 799),
(102, 2, 'Card', 1599),
(103, 3, 'Wallet', 450),
(104, 4, 'COD', 999),
(105, 2, 'UPI', 249),
(106, 5, 'Card', 3200),
(107, 1, 'Wallet', 150),
(108, 6, 'COD', 1899);

-- Task 2
SELECT payment_method , COUNT(payment_method) AS counting FROM orders GROUP BY payment_method; 

-- Task 3
SELECT user_id , SUM(amount) FROM orders GROUP BY user_id;

-- Task 4
SELECT AVG(amount) AS avg_amount , order_id FROM orders GROUP BY order_id HAVING avg_amount > 300;  

-- Task 5
-- WHERE example
SELECT order_id, user_id, payment_method, amount
FROM Orders
WHERE payment_method = 'UPI';


-- HAVING EXAMPLE
SELECT user_id, SUM(amount) AS total_amount
FROM Orders
GROUP BY user_id
HAVING SUM(amount) > 2000;