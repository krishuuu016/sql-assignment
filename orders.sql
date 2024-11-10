CREATE DATABASE orders;

USE orders;

CREATE TABLE UserTable (
	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Firstname VARCHAR(50),
    Lastname VARCHAR(50)
    );

CREATE TABLE AddressTable (
	AddressID INT PRIMARY KEY AUTO_INCREMENT,
	City VARCHAR(50),
    State VARCHAR(50),
    Pincode INT	
    );
    
CREATE TABLE ProductTable (
	ProductID INT PRIMARY KEY AUTO_INCREMENT,
	ProductName VARCHAR(100),
    ProductDiscription VARCHAR(100),
    ProductReturnable VARCHAR(10),
    Owners VARCHAR(50)
    );
    
CREATE TABLE OrderTable (
	OrderID INT PRIMARY KEY AUTO_INCREMENT,
    Total INT,
    dates DATE,
	Status VARCHAR(20),
    CustomerID INT,
    ProductID INT,
    AddressID INT,
    FOREIGN KEY (CustomerID) REFERENCES UserTable(CustomerID),
    FOREIGN KEY (AddressID) REFERENCES AddressTable(AddressID),
    FOREIGN KEY (ProductID) REFERENCES ProductTable(ProductID)
    );
    
INSERT INTO UserTable (FirstName, LastName)
VALUES ('John', 'Doe'),
       ('Mary', 'Ann');

INSERT INTO AddressTable (City, State, Pincode)
Values ('Indore', 'MP' , '452001'),
	   ('Pune', 'Maharashtra', '410014');

INSERT INTO ProductTable (ProductName, ProductDiscription, ProductReturnable, Owners)
Values ('One Plus Nord', 'Red Mobile Phone', 'No', 'Seller_Z'),
       ('Air Jordans', 'Shoes', 'Yes', 'Nike');
       
INSERT INTO OrderTable (OrderID, CustomerID, ProductID, AddressID, Total, Dates)
VALUES (1, 1, 1, 1, 20000, '2020-08-15'),
       (2, 2, 2, 1, 25000, '2022-08-15'),
       (3, 1, 1, 2, 20000, '2020-08-15');