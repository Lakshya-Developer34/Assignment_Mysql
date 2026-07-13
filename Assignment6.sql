/*
Tasks
1.
Write an SQL query to display all products from a 'products' table and sort them by price in ascending order, similar to how Flipkart lists items from lowest to highest price.
2.
Modify your previous query to show the top 5 most expensive products using ORDER BY with DESC and LIMIT.
3.
Given a 'movies' table with columns 'title', 'release_year', and 'rating', write an SQL query to list all movies sorted first by release_year in descending order (latest first), then by rating in descending order (highest rated first).
4.
Write an SQL query to display the first 10 restaurants from a 'restaurants' table, sorted alphabetically by name, just like Zomato's A-Z listing.<br><br><em><strong>Hint:</strong> Use ORDER BY with LIMIT.</em>
5.
Suppose you want to display the top 3 trending songs from a 'songs' table based on play_count, but if two songs have the same play_count, the more recently added song should come first. Write the SQL query to achieve this.<br><br><em><strong>Hint:</strong> Use ORDER BY with multiple columns.</em>
*/




CREATE DATABASE assignment6;
USE assignment6;
CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    brand VARCHAR(50)
);

INSERT INTO products VALUES
(1, 'iPhone 15', 'Mobile', 79999.00, 'Apple'),
(2, 'Galaxy S24', 'Mobile', 74999.00, 'Samsung'),
(3, 'Redmi Note 14', 'Mobile', 18999.00, 'Xiaomi'),
(4, 'Boat Rockerz 450', 'Headphones', 1499.00, 'boAt'),
(5, 'Dell Inspiron 15', 'Laptop', 58999.00, 'Dell'),
(6, 'HP Pavilion 14', 'Laptop', 64999.00, 'HP'),
(7, 'Sony WH-CH520', 'Headphones', 4499.00, 'Sony'),
(8, 'Logitech Wireless Mouse', 'Accessories', 899.00, 'Logitech'),
(9, 'Samsung 55-inch Smart TV', 'Television', 46999.00, 'Samsung'),
(10, 'Apple Watch SE', 'Smartwatch', 29999.00, 'Apple');


CREATE TABLE movies (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    release_year INT,
    rating DECIMAL(2,1)
);

INSERT INTO movies VALUES
(1, 'Inception', 2010, 8.8),
(2, 'Interstellar', 2014, 8.7),
(3, 'Avengers: Endgame', 2019, 8.4),
(4, 'The Batman', 2022, 7.8),
(5, 'Oppenheimer', 2023, 8.6),
(6, 'Jawan', 2023, 7.1),
(7, 'Pathaan', 2023, 6.8),
(8, 'Dune: Part Two', 2024, 8.8),
(9, 'Deadpool & Wolverine', 2024, 8.2),
(10, 'Mission: Impossible – Dead Reckoning', 2023, 7.7);



CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);

INSERT INTO restaurants  VALUES
(1, 'Barbeque Nation', 'North Indian', 4.5, 'Ahmedabad'),
(2, 'Cafe Mocha', 'Cafe', 4.2, 'Surat'),
(3, 'Dominos Pizza', 'Italian', 4.1, 'Vadodara'),
(4, 'Empire Restaurant', 'Biryani', 4.4, 'Bengaluru'),
(5, 'Food Factory', 'Fast Food', 4.0, 'Rajkot'),
(6, 'Green Leaf', 'South Indian', 4.3, 'Pune'),
(7, 'Hungry Hub', 'Multi Cuisine', 4.6, 'Mumbai'),
(8, 'Italian Bistro', 'Italian', 4.4, 'Delhi'),
(9, 'Khana Khazana', 'North Indian', 4.1, 'Jaipur'),
(10, 'Zesty Bites', 'Chinese', 4.5, 'Hyderabad');


-- Task 1 
SELECT * FROM products ORDER BY price ASC;

-- Task 2
SELECT * FROM products ORDER BY price DESC LIMIT 5;

-- Task 3
SELECT * FROM movies ORDER BY release_year DESC , rating DESC;

-- Task 4
SELECT * FROM restaurants ORDER BY name ASC LIMIT 10;