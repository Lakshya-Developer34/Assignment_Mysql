/*Tasks
1.
Create a table called Restaurants with columns: id, name, cuisine, rating, and city. Insert at least 5 sample records representing real or fictional restaurants you might find on Zomato.
2.
Write a SQL query to find all restaurants in the Restaurants table that have a rating greater than 4.0 and are located in either 'Ahmedabad' or 'Surat'.
3.
Using the LIKE operator, write a query to select all restaurants whose names start with 'Swa' (for example, 'Swagat', 'Swadisht') from the Restaurants table.<br><br><em><strong>Hint:</strong> Use LIKE 'Swa%'.</em>
4.
Write a SQL query using the BETWEEN keyword to find all restaurants in the Restaurants table with a rating between 3.5 and 4.5 (inclusive).
5.
Write a query to find all restaurants whose cuisine is either 'Chinese', 'Italian', or 'South Indian' using the IN operator.*/


CREATE DATABASE assignment5;
USE assignment5;

-- Task 1
CREATE TABLE restaurant(
id INT PRIMARY KEY NOT NULL,
name VARCHAR(50),
cuisine VARCHAR(50),
rating FLOAT,
city VARCHAR(30)
);

INSERT INTO restaurant
VALUES
(1, 'Spice Villa', 'North Indian', 4.5, 'Ahmedabad'),
(2, 'Pizza Paradise', 'Italian', 4.3, 'Surat'),
(3, 'Dragon Wok', 'Chinese', 4.1, 'Vadodara'),
(4, 'Burger Junction', 'Fast Food', 4.4, 'Rajkot'),
(5, 'Southern Delight', 'South Indian', 4.6, 'Mumbai');

-- Task 2
SELECT * FROM restaurant WHERE rating > 4.0 AND city = 'Ahmedabad' or 'Surat';

-- Task 3 
SELECT * FROM restaurant WHERE name like "Swa%"; 
SELECT * FROM restaurant WHERE name like "Spi%";

-- Task 4
SELECT * FROM restaurant WHERE rating BETWEEN 3.5 AND 4.5;

-- Task 5
SELECT * FROM restaurant WHERE cuisine IN ('Chinese', 'Italian', 'South Indian');