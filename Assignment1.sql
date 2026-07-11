/*Tasks
1.
Install MySQL or PostgreSQL on your system and create a new database named 'music_streaming_app' using the command line or GUI tool of your choice.
2.
Inside the 'music_streaming_app' database, create a table called 'playlists' with columns: playlist_id (integer, primary key), name (varchar), and created_by (varchar).
3.
Insert three sample rows into the 'playlists' table representing playlists like 'Bollywood Hits', 'Chill Vibes', and 'Workout Mix', each created by a different user.
4.
Write an SQL SELECT query to display all playlists created by the user 'Amit' from the 'playlists' table.<br><br><em><strong>Hint:</strong> Use the WHERE clause to filter by the 'created_by' column.</em>
5.
Open ChatGPT or Copilot and ask it to explain the difference between a table, a row, and a column in SQL using an example from a food delivery app like Zomato. Paste the explanation you receive into your assignment.
*/

-- Task 1
CREATE DATABASE music_streaming_app;


-- Task 2
 USE music_streaming_app;
 CREATE TABLE playlists(
 playlist_id INT PRIMARY KEY,
 name VARCHAR(30),
 created_by VARCHAR(30)
 );
 
 
 -- Task 3
 INSERT INTO playlists VALUES(1,"Bollywood", "Lakshya"),
 (2,"Chill Vibes", "Ram"),
 (3,"Workout mix", "Lalit");
 INSERT INTO playlists VALUES(4,"Lofi", "Amit");
 
 
 -- Task 4
 SELECT * FROM playlists WHERE created_by = "Amit"; 
 
 
 -- Task 5
 /*Difference Between a Table, Row, and Column in SQL (Zomato Example)

In SQL, data is stored in tables. A table is like a spreadsheet that contains related information.

For example, in a food delivery app like Zomato, there can be a table called Restaurants.

Restaurant_ID	Restaurant_Name	City	Rating
101	Pizza Hub	Surat	4.5
102	Burger Point	Ahmedabad	4.2
103	South Spice	Vadodara	4.7
1. Table

A table is a collection of related data organized into rows and columns.

Example: The Restaurants table stores information about all restaurants registered on Zomato.

2. Row

A row represents a single record or entry in a table.

Example:
101 | Pizza Hub | Surat | 4.5

This row contains the complete details of one restaurant.

3. Column

A column represents a specific attribute or type of information for all records.

In the Restaurants table:

Restaurant_ID stores the unique ID.
Restaurant_Name stores the restaurant name.
City stores the city where the restaurant is located.
Rating stores the customer rating.
Summary
Table → A collection of related data (e.g., Restaurants table).
Row → One complete record (e.g., details of Pizza Hub).
Column → One category of information (e.g., City or Rating).

This structure helps SQL databases organize and retrieve data efficiently.*/
 