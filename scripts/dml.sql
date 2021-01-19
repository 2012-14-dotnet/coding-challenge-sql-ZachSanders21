using customerphone

INSERT INTO Products (ID, [Name], Price)
VALUES (1, iPhone, 200.00),
VALUES (2, Blackberry, 100.00),
VALUES (3, Android, 250.00);

INSERT INTO Customers (ID, Firstname, Lastname, CardNumber)
VALUES (1, Zach, Sanders, 1234567891234567),
VALUES (2, Fred, Belotte, 9876543219876543),
VALUES (3, James, Smith, 4568972384561245),
VALUES (4, Donald, Duck, 5486215975486542);

INSERT INTO Orders (ID, ProductID, CustomerID)
VALUES (1, 2, 3),
VALUES (2, 1, 4),
VALUES (3, 3, 1);

INSERT INTO Customers (ID, Firstname, Lastname, CardNumber)
VALUES (5, Tina, Smith, 5166849978442136);

INSERT INTO Orders (ID, ProductID, CustomerID)
VALUES (4, 1, 5);

SELECT * FROM Customers
WHERE Firstname == Tina && Lastname == Smith
LEFT JOIN Orders
ON Customers.ID = Orders.CustomerID;

SELECT * FROM Products
WHERE [Name] like iPhone%
LEFT JOIN Orders
ON Products.ID = Orders.ProductID;

UPDATE Products
SET Price = 250.00
WHERE ID = 1;