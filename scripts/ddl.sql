CREATE DATABASE customerphone

CREATE TABLE Products (
    ID smallint(100) NOT NULL,
    [Name] varchar(100) NOT NULL,
    Price decimal(5,2) NOT NULL,
    PRIMARY KEY (ID)
);
CREATE TABLE Orders (
    ID smallint(100) NOT NULL,
    ProductID smallint(100) NOT NULL,
    CustomerID smallint(100) NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(ID)
);
CREATE TABLE Customers (
    ID smallint(100) NOT NULL,
    Firstname varchar(100),
    Lastname varchar(100) NOT NULL,
    CardNumber smallint(16) NOT NULL,
    PRIMARY KEY (ID)
);