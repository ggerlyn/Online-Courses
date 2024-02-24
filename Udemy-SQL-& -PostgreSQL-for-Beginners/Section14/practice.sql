CREATE DATABASE credentials_db;

DROP DATABASE credentials_db;

CREATE DATABASE credentials_db;

CREATE TABLE user_details (
	user_id SERIAL PRIMARY KEY,
	user_fname VARCHAR(30) NOT NULL,
	user_lname VARCHAR(30) NOT NULL,
	user_location VARCHAR(100) NOT NULL,
	user_age INT
	)

SELECT * FROM user_details;

INSERT INTO user_details (user_fname, user_lname, user_location, user_age)
VALUES ('ABC', 'DEF', 'Philippines', 24);

INSERT INTO user_details (user_fname, user_lname, user_location, user_age)
VALUES ('GHI', 'JKL', 'Philippines', 25);

INSERT INTO user_details (user_fname, user_lname, user_location, user_age)
VALUES ('GHI', 'JKL', 'Philippines', 25), ('Geng', 'Geng', 'Japan', 27);
	
SELECT * FROM user_details
ORDER by user_id;
UPDATE user_details
SET user_fname = 'Mar', user_lname = 'Tilyo', user_location = 'Kahoy', user_age = 26
WHERE user_id = 2;

ALTER TABLE user_details RENAME COLUMN user_location TO user_loc;

DELETE FROM user_details
WHERE user_id IN (3, 4, 6, 8, 9);
