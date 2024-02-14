CREATE DATABASE Library

USE Library

CREATE TABLE Books (
    Id INT,
    Name VARCHAR(100),
    Price DECIMAL(10, 2)
)

ALTER TABLE Books
ADD Author VARCHAR(100),
Genre VARCHAR(100)

ALTER TABLE Books
DROP COLUMN Genre

INSERT INTO Books (Id, Name, Price, Genre, Author)
VALUES (1, 'Book1', 5.99, 'Author1'),
       (2, 'Book2', 15.99, 'Author2'),
       (3, 'Book3', 25.99, 'Author3')

UPDATE Books
SET Price = 10
WHERE Price < 10;

SELECT * FROM Books
WHERE Price BETWEEN 10 AND 50;

SELECT * FROM Books
WHERE Name LIKE '%a%' OR Author LIKE '%a%';

DELETE FROM Books
WHERE Price = 10;