USE task5;

CREATE TABLE IF NOT EXISTS Customers (Id int, Name varchar(255));
CREATE TABLE IF NOT EXISTS Orders (Id int, CustomerId int);
TRUNCATE TABLE Customers;

INSERT INTO Customers (Id, Name)
VALUES
(1, 'Joe');
INSERT INTO Customers (Id, Name)
VALUES
(2, 'Henry');
INSERT INTO Customers (Id, Name)
VALUES
(3, 'Sam');
INSERT INTO Customers (Id, Name)
VALUES
(4, 'Max');
SELECT * FROM Customers;

TRUNCATE TABLE Orders;
INSERT INTO Orders (Id, CustomerId)
VALUES
(1, 3);
INSERT INTO Orders (Id, CustomerId)
VALUES
(2, 1);
SELECT * FROM Orders;

SELECT Name AS 'Customers'
FROM Customers
LEFT JOIN Orders ON
Orders.CustomerId = Customers.Id
WHERE Orders.CustomerId is null;


