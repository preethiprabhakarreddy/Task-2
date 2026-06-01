-- INSERT DATA

INSERT INTO Categories VALUES
(1, 'Fiction'),
(2, 'Science'),
(3, 'History');

INSERT INTO Books VALUES
(1, 'The Alchemist', '9780061122415', 1988, 1),
(2, 'A Brief History of Time', NULL, 1988, 2),
(3, 'Sapiens', '9780062316097', 2011, 3);

INSERT INTO Students VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com'),
(2, 'Priya Patel', NULL);

INSERT INTO IssuedBooks VALUES
(1, 1, 1, '2025-08-01', '2025-08-15'),
(2, 2, 2, '2025-08-05', NULL);

-- UPDATE DATA

UPDATE Students
SET email = 'priya@gmail.com'
WHERE student_id = 2;

UPDATE Books
SET publication_year = 2012
WHERE book_id = 3;

-- DELETE DATA

DELETE FROM IssuedBooks

WHERE issue_id = 2;

-- DISPLAY DATA

SELECT * FROM Categories;
SELECT * FROM Books;
SELECT * FROM Students;
SELECT * FROM IssuedBooks;