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
