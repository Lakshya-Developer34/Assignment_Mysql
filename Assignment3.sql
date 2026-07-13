/*
Tasks
1.
Create a table called Playlist with columns: id (INT, primary key), song_name (VARCHAR), artist (VARCHAR), and duration (INT, seconds). Insert a single row for your current favorite song.
2.
Insert 3 new rows into the Playlist table for songs you recently listened to on Spotify, including their song_name, artist, and duration.
3.
Update the artist name for one of your Playlist entries to fix a typo (for example, change 'Arjit Singh' to 'Arijit Singh') using the UPDATE statement with a WHERE clause.
4.
Delete a song from the Playlist table where the duration is less than 120 seconds using the DELETE statement and a WHERE clause.<br><br><em><strong>Hint:</strong> Make sure your WHERE clause is specific so you don’t accidentally delete all rows.</em>
5.
Write an SQL statement that would update the song_name for all songs by 'AP Dhillon' in your Playlist to add '(Remix)' at the end of the name, but only if the duration is more than 180 seconds.<br><br><em><strong>Constraint:</strong> Combine UPDATE with WHERE to target only the correct rows.</em>
*/

CREATE DATABASE songs;
USE songs;


-- Task 1
CREATE TABLE Playlist (
    id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    duration INT
);

-- Insert your current favorite song
INSERT INTO Playlist VALUES (1, 'Satranga', 'Arijit Singh', 272);

-- Task 2
INSERT INTO Playlist VALUES
(2, 'Excuses', 'AP Dhillon', 236),
(3, 'Brown Munde', 'AP Dhillon', 245),
(4, 'Kesariya', 'Arjit Singh', 269);

SET SQL_SAFE_UPDATES = 0;    -- it is use to deactivate safe mode temporarily


-- Task 3
UPDATE Playlist
SET artist = 'Arijit Singh'
WHERE artist = 'Arjit Singh';

-- Task 4 
INSERT INTO Playlist VALUES (5, 'Short Intro', 'Unknown Artist', 90);
DELETE FROM Playlist
WHERE duration < 120;

-- Task 5
SELECT * FROM playlist;
UPDATE Playlist
SET song_name = CONCAT(song_name, ' (Remix)')
WHERE artist = 'AP Dhillon'
  AND duration > 180;

