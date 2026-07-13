/*
Tasks
1.
Create a table named MusicPlaylist with columns: id, song_name, artist, genre, and duration. Insert at least 5 records representing songs from your favorite Spotify playlist, then write a SELECT statement to retrieve all columns for all songs.
2.
Write a SQL query to display only the song_name and artist columns from the MusicPlaylist table, showing just the first 3 records using the LIMIT keyword.
3.
Suppose you have a table named FoodOrders with columns: id, restaurant, food_item, and order_date. Write a SQL query to list all unique restaurant names where you have placed orders, using the DISTINCT keyword.
4.
Write a SQL query on the FoodOrders table to select food_item as 'Dish' and order_date as 'Date Ordered', displaying only these two columns with the column aliases in the output.
5.
You tried running this query: SELECT DISTINCT food_item, restaurant FROM FoodOrders LIMIT 2, but it returns an error or doesn't work as expected. Identify and fix the mistake in the query.<br><br><em><strong>Hint:</strong> Check the correct placement and usage of the LIMIT keyword in SQL syntax.</em>*/
USE songs;
-- Task 1

CREATE TABLE MusicPlaylist(
id INT PRIMARY KEY NOT NULL,
song_name VARCHAR(50),
artist VARCHAR(30),
genre VARCHAR(50),
duration INT
);

INSERT INTO musicplaylist
VALUES
(1, 'Excuses', 'AP Dhillon', 'Punjabi Pop', 236),
(2, 'Brown Munde', 'AP Dhillon', 'Punjabi Hip-Hop', 289),
(3, 'Kesariya', 'Arijit Singh', 'Bollywood', 269),
(4, 'Believer', 'Imagine Dragons', 'Rock', 204),
(5, 'Shape of You', 'Ed Sheeran', 'Pop', 233);

-- Task 2
SELECT song_name , artist FROM Musicplaylist LIMIT 3;


-- Task 3
CREATE TABLE FoodOrders (
id INT PRIMARY KEY,
restaurant VARCHAR(100),
food_item VARCHAR(100),
order_date DATE
);

INSERT INTO FoodOrders (id, restaurant, food_item, order_date)
VALUES
(1, 'McDonalds', 'Big Mac Burger', '2026-07-01'),
(2, 'Dominos', 'Farmhouse Pizza', '2026-07-02'),
(3, 'Subway', 'Veg Sandwich', '2026-07-03'),
(4, 'McDonalds', 'French Fries', '2026-07-04'),
(5, 'Dominos', 'Garlic Bread', '2026-07-05');

SELECT DISTINCT restaurant
FROM FoodOrders;

-- Task 4
SELECT food_item AS Dish , order_date AS Date_Ordered FROM FoodOrders;

-- Task 5
SELECT DISTINCT food_item , restaurant FROM FoodOrders LIMIT 2;