CREATE DATABASE userssql;

USE userssql;

CREATE TABLE users(
	id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(45),
    created_at DATETIME,
    updated_at DATETIME
);
INSERT INTO users( id, first_name, last_name, email, created_at, updated_at )
VALUES  ( 1, 'Alex', 'Miller', 'alex@gmail.com', SYSDATE(), SYSDATE() ),
		( 2, 'Michael', 'Salazar', 'michael@gmail.com', SYSDATE(), SYSDATE() ),
        ( 3, 'Julieta', 'Garcia', 'julieta@gmail.com', SYSDATE(), SYSDATE() );
        
SELECT *
FROM users;

SELECT *
FROM users
where email = 'alex@gmail.com';

SELECT *
FROM users
where id = 3;

UPDATE users
SET last_name = 'Pancakes'
WHERE id = 3;

DELETE FROM users
WHERE id = 2;

SELECT *
FROM users
ORDER BY first_name;

SELECT *
FROM users
ORDER BY first_name DESC;