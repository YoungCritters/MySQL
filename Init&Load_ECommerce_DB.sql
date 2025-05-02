-- Employees
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    position VARCHAR(100),
    hire_date DATE,
    department_id INT
);

-- Departments
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- EmployeeRoles
CREATE TABLE EmployeeRoles (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(100)
);

-- EmployeeRoleAssignment
CREATE TABLE EmployeeRoleAssignment (
    employee_id INT,
    role_id INT,
    PRIMARY KEY (employee_id, role_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (role_id) REFERENCES EmployeeRoles(role_id)
);

-- Inventory Logs (for stock changes by employees)
CREATE TABLE InventoryLogs (
    log_id INT PRIMARY KEY,
    product_id INT,
    employee_id INT,
    change_quantity INT,
    change_date DATE,
    reason VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Shipments
CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT,
    shipped_by INT,
    shipped_date DATE,
    delivery_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (shipped_by) REFERENCES Employees(employee_id)
);

-- Suppliers
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_email VARCHAR(100),
    contact_phone VARCHAR(20)
);

-- ProductSupplier (many-to-many)
CREATE TABLE ProductSupplier (
    product_id INT,
    supplier_id INT,
    PRIMARY KEY (product_id, supplier_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- AdminLogs (auditing changes by employees)
CREATE TABLE AdminLogs (
    log_id INT PRIMARY KEY,
    employee_id INT,
    action VARCHAR(255),
    log_time TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

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
