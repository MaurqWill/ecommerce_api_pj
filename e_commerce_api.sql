CREATE DATABASE e_commerce_db2;

USE e_commerce_db2;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(320),
    phone VARCHAR(15)
);

CREATE TABLE Customer_Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    date DATE NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL
);

CREATE TABLE Order_Product (
    order_id INT,
    product_id INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);

INSERT INTO Customers (name, email, phone) VALUES ('Richard Jackson', 'rj@gmail.com', '7867564847'),
												  ('Quinn Lane', 'qlane@yahoo.com', '9857498398'),	
											      ('Jesse Pinkman', 'ice_man@yahoo.com', '9859590445'),
                                                  ('Raquel Grinder', 'bigraq@gmail.com', '7735648756');
                                                  
UPDATE Customers SET email = 'richyrich@' WHERE customer_id = 1;

DELETE FROM Customers WHERE customer_id = 4;

INSERT INTO Products (name, price)  
VALUES ('Laptop', 999.99), 
       ('Desk', 59.99), 
       ('Calculator', 9.99), 
       ('Lamp', 13.99), 
       ('Mouse', 19.99);

UPDATE Products SET price = 799.99 WHERE id = 5;

DELETE FROM Products WHERE id = 7;


                                                  
SELECT *
FROM Customer_Accounts;

SELECT *
FROM Customers;

SELECT *
FROM Orders;

SELECT *
FROM Products;

SELECT *
FROM Order_Product;