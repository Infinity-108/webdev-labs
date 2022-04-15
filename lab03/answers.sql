-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3: SORTING
SELECT id, first_name, last_name 
FROM users
ORDER BY last_name;


-- Exercise 4: FILTERING 
SELECT id, user_id, image_url 
FROM posts
WHERE user_id=26;


-- Exercise 5: FILTERING- LOGICAL OPERATORS
SELECT id, image_url, user_id
FROM posts
WHERE user_id=26 or user_id=12;

-- Exercise 6: USING FUNCTIONS IN A SELECT STATEMENT
SELECT COUNT(id)
FROM posts;



-- Exercise 7: AGGREGATING DATA
SELECT user_id, count(user_id)
FROM comments 
GROUP BY user_id
ORDER BY count(user_id) DESC;



-- Exercise 8: JOINING TABLES
SELECT posts.id, posts.image_url, posts.user_id, 
users.username, users.first_name, users.last_name
FROM posts
INNER JOIN users ON users.id = posts.user_id
WHERE user_id=26 or user_id=12;



-- Exercise 9: JOINING TABLES
SELECT posts.id, posts.pub_date, following.following_id
FROM following
INNER JOIN posts ON posts.user_id =following.following_id
WHERE following.user_id=26;



-- Exercise 10: JOINING THREE TABLES
SELECT posts.id, posts.pub_date, following.following_id, users.username
FROM following
INNER JOIN posts ON posts.user_id =following.following_id
INNER JOIN users ON posts.user_id = users.id
WHERE following.user_id =26
ORDER BY posts.pub_date DESC;



-- Exercise 11 : INSERTING
INSERT INTO bookmarks(user_id,post_id,timestamp)
VALUES(26,219,now());

INSERT INTO bookmarks(user_id,post_id,timestamp)
VALUES(26,220,now());

INSERT INTO bookmarks(user_id,post_id,timestamp)
VALUES(26,221,now())



-- Exercise 12: DELETING

DELETE FROM bookmarks
WHERE post_id = 219;

DELETE FROM bookmarks
WHERE post_id = 220;

DELETE FROM bookmarks
WHERE post_id = 221;



-- Exercise 13: UPDATING

UPDATE users
SET email = 'knick2022@gmail.com'
WHERE id = 26;


-- Exercise 14
