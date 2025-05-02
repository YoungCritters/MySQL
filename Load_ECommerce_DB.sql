-- Users
INSERT INTO Users VALUES
(1, 'Alice Smith', 'alice@example.com', '123 Main St', '2023-01-10'),
(2, 'Bob Johnson', 'bob@example.com', '456 Maple Rd', '2023-02-15'),
(3, 'Carol White', 'carol@example.com', '789 Oak Ave', '2023-03-01');
(4, 'John Smith', 'john@example.com', '812 Main St', '2022-01-15');


-- Categories
INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing');

-- Products
INSERT INTO Products VALUES
(1, 'Smartphone', 'Latest 5G smartphone', 699.99, 1, 50),
(2, 'Laptop', 'High-performance laptop', 999.99, 1, 20),
(3, 'Novel', 'Bestselling novel', 14.99, 2, 100),
(4, 'T-Shirt', '100% cotton t-shirt', 9.99, 3, 200);

-- Orders
INSERT INTO Orders VALUES
(1, 1, '2023-04-01', 'Shipped'),
(2, 2, '2023-04-05', 'Processing');

-- OrderItems
INSERT INTO OrderItems VALUES
(1, 1, 1, 1, 699.99),
(2, 1, 3, 2, 14.99),
(3, 2, 2, 1, 999.99);

-- Payments
INSERT INTO Payments VALUES
(1, 1, '2023-04-02', 729.97, 'Credit Card'),
(2, 2, '2023-04-06', 999.99, 'PayPal');

-- Reviews
INSERT INTO Reviews VALUES
(1, 1, 1, 5, 'Amazing phone!', '2023-04-10'),
(2, 2, 2, 4, 'Very fast, but expensive.', '2023-04-12'),
(3, 3, 3, 3, 'Decent book, worth the price.', '2023-04-15');

-- Departments
INSERT INTO Departments VALUES 
(1, 'Sales'), 
(2, 'Logistics'), 
(3, 'IT Support');

-- Employees
INSERT INTO Employees VALUES 
(1, 'David Miller', 'david@ecom.com', 'Warehouse Manager', '2022-06-01', 2),
(2, 'Susan Lee', 'susan@ecom.com', 'Sales Associate', '2021-08-15', 1),
(3, 'John Ray', 'john@ecom.com', 'System Admin', '2020-12-20', 3);

-- EmployeeRoles
INSERT INTO EmployeeRoles VALUES
(1, 'Admin'), 
(2, 'Inventory Manager'), 
(3, 'Customer Support');

-- EmployeeRoleAssignment
INSERT INTO EmployeeRoleAssignment VALUES 
(1, 2), 
(2, 3), 
(3, 1);

-- Inventory Logs
INSERT INTO InventoryLogs VALUES 
(1, 1, 1, -5, '2023-04-01', 'Order Fulfillment'),
(2, 4, 1, 50, '2023-03-29', 'New stock received');

-- Shipments
INSERT INTO Shipments VALUES 
(1, 1, 1, '2023-04-02', '2023-04-04', 'Delivered'),
(2, 2, 1, '2023-04-06', NULL, 'In Transit');

-- Suppliers
INSERT INTO Suppliers VALUES
(1, 'TechGlobal Inc.', 'contact@techglobal.com', '123-456-7890'),
(2, 'BookPlanet Ltd.', 'sales@bookplanet.com', '987-654-3210');

-- ProductSupplier
INSERT INTO ProductSupplier VALUES
(1, 1), 
(2, 1), 
(3, 2);

-- AdminLogs
INSERT INTO AdminLogs VALUES
(1, 3, 'Updated user password', '2023-04-01 10:15:00'),
(2, 3, 'Deleted inactive product', '2023-04-03 11:20:00');
