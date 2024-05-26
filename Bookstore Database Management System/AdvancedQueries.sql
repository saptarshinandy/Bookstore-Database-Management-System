
-- Retrieve customers who have spent more than \$30
SELECT C.FirstName, C.LastName, SUM(O.Quantity * B.Price) AS TotalSpent
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Books B ON O.BookID = B.BookID
GROUP BY C.CustomerID
HAVING TotalSpent > 30;


-- Retrieve the author with the highest total book sales
SELECT A.FirstName, A.LastName, SUM(O.Quantity * B.Price) AS TotalSales
FROM Orders O
JOIN Books B ON O.BookID = B.BookID
JOIN Authors A ON B.AuthorID = A.AuthorID
GROUP BY A.AuthorID
ORDER BY TotalSales DESC
LIMIT 1;
