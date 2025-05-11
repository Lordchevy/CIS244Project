-- Customer table
CREATE TABLE Customer (
  CustomerID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100),
  Email VARCHAR(100),
  Address VARCHAR(255),
  Phone VARCHAR(20),
  Password VARCHAR(50)
);

-- Product table
CREATE TABLE Product (
  ProductID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100),
  Description TEXT,
  Category VARCHAR(50),
  Price DECIMAL(10,2),
  Quantity INT,
  ImageURL VARCHAR(255)
);

-- Order table
CREATE TABLE `Order` (
  OrderID INT PRIMARY KEY AUTO_INCREMENT,
  CustomerID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(10,2),
  Status VARCHAR(50),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Payment table
CREATE TABLE Payment (
  PaymentID INT PRIMARY KEY AUTO_INCREMENT,
  OrderID INT,
  PaymentMethod VARCHAR(50),
  PaymentDate DATE,
  Amount DECIMAL(10,2),
  FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID)
);


-- Insert into customers
INSERT INTO Customer (customerid, name, email, address, phone) VALUES
(1, 'Damian Chevalier', 'dchevy1203@yahoo.com', '129 Clove Avenue, Haverstraw, NY', '8453679800'),
(2, 'Alex Burgos', 'aburbos1@gmail.com', '129 First Street, New York, NY', '9734456732'),
(3, 'Keiru Olivares', 'kolivares@hotmail.com', '40 46th Street, Suffern, NY', '8455567688'),
(4, 'Oscar Reyes', 'Oreyes22@aol.com', '88 Third Street, Middletown, NY', '2018906655'),
(5, 'Kris Pagan', 'kpagab11@gmail.com', '13 E Railroad Avenue, West Haverstraw, NY', '2013456789');

-- Insert into orders
INSERT INTO `Order` (orderid, orderdate, totalamount, status) VALUES
(1, '2025-05-09', 25.00, 'received'),
(2, '2025-05-01', 50.00, 'in transit'),
(3, '2025-05-02', 45.00, 'in transit'),
(4, '2025-04-28', 30.00, 'received'),
(5, '2025-04-26', 25.00, 'received');

-- Insert into payments
INSERT INTO Payment (paymentid, paymentmethod, paymentdate, amount) VALUES
(1, 'Visa', '2025-05-09', 25.00),
(2, 'Mastercard', '2025-05-01', 50.00),
(3, 'Visa', '2025-05-02', 45.00),
(4, 'Amex', '2025-04-28', 30.00),
(5, 'Paypal', '2025-04-26', 25.00);

-- Insert into products
INSERT INTO Product (productid, name, description, category, price, quantity) VALUES
(1, 'Levi jacket', 'Denim Jacket', 'Clothing', 50.00, 5),
(2, 'Yankees T-shirt', 'T-shirt', 'Clothing', 25.00, 2),
(3, 'Nike Sweatshirt', 'Sweatshirt', 'Clothing', 25.00, 1),
(4, 'Starter Jacket', 'Jacket', 'Clothing', 45.00, 3),
(5, 'Adidas Track Jacket', 'Jacket', 'Clothing', 30.00, 1);

