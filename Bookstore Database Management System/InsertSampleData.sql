
-- Insert data into Authors table
INSERT INTO Authors (FirstName, LastName) VALUES
('J.K.', 'Rowling'),
('George', 'Orwell'),
('J.R.R.', 'Tolkien');


-- Insert data into Books table
INSERT INTO Books (Title, Genre, AuthorID, Price) VALUES
('Harry Potter and the Philosopher\'s Stone', 'Fantasy', 1, 19.99),
('1984', 'Dystopian', 2, 14.99),
('The Hobbit', 'Fantasy', 3, 25.00);


-- Insert data into Customers table
INSERT INTO Customers (FirstName, LastName, Email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com');


-- Insert data into Orders table
INSERT INTO Orders (CustomerID, BookID, OrderDate, Quantity) VALUES
(1, 1, '2023-01-15', 1),
(2, 2, '2023-02-20', 2),
(1, 3, '2023-03-10', 1);
