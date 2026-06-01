--SCHEMA SQL
CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    isbn VARCHAR(20),
    publication_year INT,
    category_id INT,
    FOREIGN KEY (category_id)
    REFERENCES Categories(category_id)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE IssuedBooks (
    issue_id INT PRIMARY KEY,
    student_id INT,
    book_id INT,
    issue_date DATE,
    due_date DATE,
    FOREIGN KEY (student_id)
    REFERENCES Students(student_id),
    FOREIGN KEY (book_id)
    REFERENCES Books(book_id)
);