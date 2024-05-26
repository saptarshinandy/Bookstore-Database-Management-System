
-- Retrieve all books and their authors
SELECT B.Title, B.Genre, A.FirstName, A.LastName, B.Price
FROM Books B
JOIN Authors A ON B.AuthorID = A.AuthorID;


-- Retrieve all orders and the customers who placed them
SELECT O.OrderID, C.FirstName, C.LastName, B.Title, O.OrderDate, O.Quantity
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Books B ON O.BookID = B.BookID;


-- Retrieve total sales for each book
SELECT B.Title, SUM(O.Quantity * B.Price) AS TotalSales
FROM Orders O
JOIN Books B ON O.BookID = B.BookID
GROUP BY B.Title;


-- Retrieve the most popular genre based on sales
SELECT B.Genre, SUM(O.Quantity) AS TotalSold
FROM Orders O
JOIN Books B ON O.BookID = B.BookID
GROUP BY B.Genre
ORDER BY TotalSold DESC
LIMIT 1;
