CREATE DATABASE SaleDB;

USE SaleDB;

-- Table: Company
CREATE TABLE Company (
    company_id INT PRIMARY KEY,
    name VARCHAR(100),
    industry VARCHAR(100),
    country VARCHAR(100),
    founded_year INT
);

-- Table: Employee
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2),
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

-- Table: Salesman
CREATE TABLE Salesman (
    salesman_id INT PRIMARY KEY,
    employee_id INT,
    region VARCHAR(100),
    commission_rate DECIMAL(5, 2),
    target_achieved BOOLEAN,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Table: Customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT,
    registered_date DATE,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

-- Table: Product
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    category VARCHAR(100),
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Company(company_id)
);

-- Table: Orders
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    salesman_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2),
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

USE SaleDB;

INSERT INTO Company VALUES (1, 'Company_1', 'Tech', 'UK', 1962);
INSERT INTO Company VALUES (2, 'Company_2', 'Tech', 'India', 1976);
INSERT INTO Company VALUES (3, 'Company_3', 'Tech', 'Canada', 1950);
INSERT INTO Company VALUES (4, 'Company_4', 'Manufacturing', 'India', 1989);
INSERT INTO Company VALUES (5, 'Company_5', 'Retail', 'Canada', 2015);
INSERT INTO Company VALUES (6, 'Company_6', 'Retail', 'India', 1961);
INSERT INTO Company VALUES (7, 'Company_7', 'Tech', 'USA', 1987);
INSERT INTO Company VALUES (8, 'Company_8', 'Retail', 'Canada', 1996);
INSERT INTO Company VALUES (9, 'Company_9', 'Healthcare', 'Canada', 1968);
INSERT INTO Company VALUES (10, 'Company_10', 'Tech', 'India', 1987);
INSERT INTO Employee VALUES (1, 'Alice Garcia', 'alice.garcia@example.com', '+1-202-3569578', '2014-01-31', 'Support', 'Marketing', 115857.41, 7);
INSERT INTO Employee VALUES (2, 'Julia Brown', 'julia.brown@example.com', '+1-202-9964174', '2010-12-30', 'Analyst', 'Finance', 91898.79, 8);
INSERT INTO Employee VALUES (3, 'Ethan Miller', 'ethan.miller@example.com', '+1-202-1391830', '2017-07-12', 'Analyst', 'Finance', 75934.56, 1);
INSERT INTO Employee VALUES (4, 'Hannah Garcia', 'hannah.garcia@example.com', '+1-202-5753612', '2008-05-28', 'Analyst', 'IT', 78225.41, 7);
INSERT INTO Employee VALUES (5, 'Ethan Taylor', 'ethan.taylor@example.com', '+1-202-3615712', '2009-01-06', 'Manager', 'Finance', 61679.27, 5);
INSERT INTO Employee VALUES (6, 'Hannah Jones', 'hannah.jones@example.com', '+1-202-5634698', '2010-04-11', 'Developer', 'HR', 88151.54, 1);
INSERT INTO Employee VALUES (7, 'Ethan Davis', 'ethan.davis@example.com', '+1-202-6510204', '2012-03-21', 'Analyst', 'HR', 61592.0, 9);
INSERT INTO Employee VALUES (8, 'Hannah Johnson', 'hannah.johnson@example.com', '+1-202-4716847', '2005-11-12', 'Manager', 'IT', 41164.29, 5);
INSERT INTO Employee VALUES (9, 'Diana Davis', 'diana.davis@example.com', '+1-202-2200286', '2008-12-19', 'Support', 'Finance', 118763.39, 7);
INSERT INTO Employee VALUES (10, 'Ian Taylor', 'ian.taylor@example.com', '+1-202-5305368', '2009-12-26', 'Analyst', 'Marketing', 93171.87, 6);
INSERT INTO Employee VALUES (11, 'Hannah Taylor', 'hannah.taylor@example.com', '+1-202-3795877', '2008-04-17', 'Developer', 'Sales', 46407.35, 5);
INSERT INTO Employee VALUES (12, 'George Miller', 'george.miller@example.com', '+1-202-8401391', '2009-08-05', 'Developer', 'Finance', 106081.18, 2);
INSERT INTO Employee VALUES (13, 'Charlie Davis', 'charlie.davis@example.com', '+1-202-4863517', '2017-08-08', 'Manager', 'Marketing', 105537.22, 6);
INSERT INTO Employee VALUES (14, 'Bob Taylor', 'bob.taylor@example.com', '+1-202-3609131', '2009-10-26', 'Manager', 'Finance', 99723.16, 8);
INSERT INTO Employee VALUES (15, 'Diana Jones', 'diana.jones@example.com', '+1-202-9726076', '2019-01-31', 'Analyst', 'HR', 57477.35, 5);
INSERT INTO Employee VALUES (16, 'Julia Johnson', 'julia.johnson@example.com', '+1-202-7366499', '2010-12-31', 'Sales Rep', 'Sales', 64406.45, 6);
INSERT INTO Employee VALUES (17, 'Julia Johnson', 'julia.johnson@example.com', '+1-202-7122386', '2006-12-12', 'Developer', 'Finance', 110104.52, 9);
INSERT INTO Employee VALUES (18, 'Hannah Taylor', 'hannah.taylor@example.com', '+1-202-7636860', '2012-05-07', 'Analyst', 'HR', 51967.2, 3);
INSERT INTO Employee VALUES (19, 'Alice Johnson', 'alice.johnson@example.com', '+1-202-6881953', '2012-04-23', 'Developer', 'IT', 86431.96, 4);
INSERT INTO Employee VALUES (20, 'Ethan Williams', 'ethan.williams@example.com', '+1-202-3001061', '2017-07-03', 'Developer', 'Marketing', 55734.2, 2);
INSERT INTO Employee VALUES (21, 'Julia Martinez', 'julia.martinez@example.com', '+1-202-7748370', '2018-01-27', 'Analyst', 'Sales', 44714.37, 8);
INSERT INTO Employee VALUES (22, 'Hannah Davis', 'hannah.davis@example.com', '+1-202-9136266', '2007-06-26', 'Manager', 'Finance', 45810.85, 5);
INSERT INTO Employee VALUES (23, 'George Davis', 'george.davis@example.com', '+1-202-6051927', '2016-09-14', 'Manager', 'Marketing', 100901.66, 3);
INSERT INTO Employee VALUES (24, 'Alice Davis', 'alice.davis@example.com', '+1-202-7678535', '2005-12-09', 'Analyst', 'HR', 53353.13, 3);
INSERT INTO Employee VALUES (25, 'Ian Miller', 'ian.miller@example.com', '+1-202-7612259', '2015-04-29', 'Analyst', 'Sales', 82663.39, 1);
INSERT INTO Employee VALUES (26, 'Hannah Davis', 'hannah.davis@example.com', '+1-202-9963414', '2016-03-01', 'Analyst', 'IT', 50059.55, 3);
INSERT INTO Employee VALUES (27, 'Alice Davis', 'alice.davis@example.com', '+1-202-6201546', '2007-04-10', 'Manager', 'IT', 58483.51, 5);
INSERT INTO Employee VALUES (28, 'Bob Brown', 'bob.brown@example.com', '+1-202-3949439', '2019-12-19', 'Manager', 'Marketing', 88878.34, 1);
INSERT INTO Employee VALUES (29, 'Ian Williams', 'ian.williams@example.com', '+1-202-5181270', '2016-06-13', 'Developer', 'Sales', 71219.75, 4);
INSERT INTO Employee VALUES (30, 'Alice Miller', 'alice.miller@example.com', '+1-202-9623242', '2010-09-18', 'Manager', 'Sales', 62949.46, 6);
INSERT INTO Salesman VALUES (1, 1, 'East', 4.09, FALSE);
INSERT INTO Salesman VALUES (2, 2, 'East', 9.3, TRUE);
INSERT INTO Salesman VALUES (3, 3, 'East', 5.98, TRUE);
INSERT INTO Salesman VALUES (4, 4, 'West', 4.53, FALSE);
INSERT INTO Salesman VALUES (5, 5, 'East', 9.0, TRUE);
INSERT INTO Salesman VALUES (6, 6, 'East', 2.32, TRUE);
INSERT INTO Salesman VALUES (7, 7, 'West', 9.5, FALSE);
INSERT INTO Salesman VALUES (8, 8, 'East', 4.44, FALSE);
INSERT INTO Salesman VALUES (9, 9, 'North', 4.6, TRUE);
INSERT INTO Salesman VALUES (10, 10, 'West', 5.31, TRUE);
INSERT INTO Salesman VALUES (11, 11, 'North', 2.22, TRUE);
INSERT INTO Salesman VALUES (12, 12, 'West', 4.47, TRUE);
INSERT INTO Salesman VALUES (13, 13, 'East', 5.17, FALSE);
INSERT INTO Salesman VALUES (14, 14, 'South', 5.66, FALSE);
INSERT INTO Salesman VALUES (15, 15, 'East', 2.44, TRUE);
INSERT INTO Customer VALUES (1, 'Alice Miller', 'alice.miller@example.com', '+1-303-6267216', '450 Main St, City_1', '2016-02-10', 4);
INSERT INTO Customer VALUES (2, 'Fiona Miller', 'fiona.miller@example.com', '+1-303-9897158', '694 Main St, City_2', '2019-05-03', 2);
INSERT INTO Customer VALUES (3, 'Charlie Martinez', 'charlie.martinez@example.com', '+1-303-9691293', '119 Main St, City_3', '2016-08-06', 1);
INSERT INTO Customer VALUES (4, 'Charlie Smith', 'charlie.smith@example.com', '+1-303-2296616', '347 Main St, City_4', '2019-06-16', 9);
INSERT INTO Customer VALUES (5, 'Hannah Garcia', 'hannah.garcia@example.com', '+1-303-6745861', '576 Main St, City_5', '2016-05-09', 2);
INSERT INTO Customer VALUES (6, 'Diana Miller', 'diana.miller@example.com', '+1-303-2395011', '924 Main St, City_6', '2015-01-23', 3);
INSERT INTO Customer VALUES (7, 'Hannah Taylor', 'hannah.taylor@example.com', '+1-303-8455426', '984 Main St, City_7', '2015-02-05', 8);
INSERT INTO Customer VALUES (8, 'Hannah Garcia', 'hannah.garcia@example.com', '+1-303-7902576', '442 Main St, City_8', '2015-01-26', 1);
INSERT INTO Customer VALUES (9, 'Charlie Williams', 'charlie.williams@example.com', '+1-303-4828150', '286 Main St, City_9', '2015-04-18', 9);
INSERT INTO Customer VALUES (10, 'Fiona Miller', 'fiona.miller@example.com', '+1-303-5730939', '791 Main St, City_10', '2019-12-29', 8);
INSERT INTO Customer VALUES (11, 'Julia Miller', 'julia.miller@example.com', '+1-303-1756937', '837 Main St, City_11', '2016-04-30', 1);
INSERT INTO Customer VALUES (12, 'Diana Martinez', 'diana.martinez@example.com', '+1-303-3228897', '798 Main St, City_12', '2021-12-15', 7);
INSERT INTO Customer VALUES (13, 'Ian Jones', 'ian.jones@example.com', '+1-303-2156931', '457 Main St, City_13', '2016-03-08', 9);
INSERT INTO Customer VALUES (14, 'Hannah Martinez', 'hannah.martinez@example.com', '+1-303-4573305', '229 Main St, City_14', '2016-10-28', 8);
INSERT INTO Customer VALUES (15, 'Ethan Miller', 'ethan.miller@example.com', '+1-303-8107470', '199 Main St, City_15', '2016-09-26', 10);
INSERT INTO Customer VALUES (16, 'Bob Garcia', 'bob.garcia@example.com', '+1-303-3178927', '446 Main St, City_16', '2016-10-24', 10);
INSERT INTO Customer VALUES (17, 'Diana Jones', 'diana.jones@example.com', '+1-303-6950430', '478 Main St, City_17', '2021-08-08', 7);
INSERT INTO Customer VALUES (18, 'Diana Taylor', 'diana.taylor@example.com', '+1-303-5705937', '459 Main St, City_18', '2015-05-09', 6);
INSERT INTO Customer VALUES (19, 'Julia Smith', 'julia.smith@example.com', '+1-303-8053297', '926 Main St, City_19', '2015-04-27', 6);
INSERT INTO Customer VALUES (20, 'George Davis', 'george.davis@example.com', '+1-303-2247067', '380 Main St, City_20', '2018-03-13', 2);
INSERT INTO Customer VALUES (21, 'Charlie Garcia', 'charlie.garcia@example.com', '+1-303-4841686', '214 Main St, City_21', '2016-07-05', 10);
INSERT INTO Customer VALUES (22, 'Ian Miller', 'ian.miller@example.com', '+1-303-2824436', '466 Main St, City_22', '2016-12-08', 6);
INSERT INTO Customer VALUES (23, 'George Martinez', 'george.martinez@example.com', '+1-303-5482728', '798 Main St, City_23', '2020-11-04', 9);
INSERT INTO Customer VALUES (24, 'Charlie Smith', 'charlie.smith@example.com', '+1-303-6874139', '834 Main St, City_24', '2020-12-01', 4);
INSERT INTO Customer VALUES (25, 'Alice Garcia', 'alice.garcia@example.com', '+1-303-5947547', '126 Main St, City_25', '2017-02-26', 3);
INSERT INTO Customer VALUES (26, 'Ian Johnson', 'ian.johnson@example.com', '+1-303-8543892', '348 Main St, City_26', '2021-01-16', 7);
INSERT INTO Customer VALUES (27, 'Julia Jones', 'julia.jones@example.com', '+1-303-6972172', '148 Main St, City_27', '2015-02-24', 4);
INSERT INTO Customer VALUES (28, 'George Garcia', 'george.garcia@example.com', '+1-303-4515821', '225 Main St, City_28', '2018-02-08', 9);
INSERT INTO Customer VALUES (29, 'Hannah Johnson', 'hannah.johnson@example.com', '+1-303-3645820', '609 Main St, City_29', '2018-10-14', 2);
INSERT INTO Customer VALUES (30, 'Alice Williams', 'alice.williams@example.com', '+1-303-3350335', '892 Main St, City_30', '2018-12-16', 8);
INSERT INTO Product VALUES (1, 'Board Game 1', 'This is a description for Board Game 1.', 1065.47, 159, 'Furniture', 9);
INSERT INTO Product VALUES (2, 'T-shirt 2', 'This is a description for T-shirt 2.', 551.7, 95, 'Books', 6);
INSERT INTO Product VALUES (3, 'Sofa 3', 'This is a description for Sofa 3.', 1066.32, 53, 'Books', 7);
INSERT INTO Product VALUES (4, 'Sofa 4', 'This is a description for Sofa 4.', 98.4, 102, 'Furniture', 8);
INSERT INTO Product VALUES (5, 'Camera 5', 'This is a description for Camera 5.', 755.43, 35, 'Books', 4);
INSERT INTO Product VALUES (6, 'Desk 6', 'This is a description for Desk 6.', 1322.29, 181, 'Furniture', 3);
INSERT INTO Product VALUES (7, 'Desk 7', 'This is a description for Desk 7.', 767.39, 121, 'Furniture', 3);
INSERT INTO Product VALUES (8, 'Jacket 8', 'This is a description for Jacket 8.', 952.37, 102, 'Furniture', 9);
INSERT INTO Product VALUES (9, 'Drone 9', 'This is a description for Drone 9.', 717.16, 19, 'Apparel', 10);
INSERT INTO Product VALUES (10, 'Sofa 10', 'This is a description for Sofa 10.', 1448.84, 170, 'Toys', 10);
INSERT INTO Product VALUES (11, 'Laptop 11', 'This is a description for Laptop 11.', 826.03, 41, 'Electronics', 9);
INSERT INTO Product VALUES (12, 'Camera 12', 'This is a description for Camera 12.', 584.63, 27, 'Toys', 7);
INSERT INTO Product VALUES (13, 'Tablet 13', 'This is a description for Tablet 13.', 243.64, 178, 'Apparel', 8);
INSERT INTO Product VALUES (14, 'Laptop 14', 'This is a description for Laptop 14.', 1248.61, 193, 'Toys', 3);
INSERT INTO Product VALUES (15, 'Jacket 15', 'This is a description for Jacket 15.', 1256.1, 29, 'Books', 10);
INSERT INTO Product VALUES (16, 'Jacket 16', 'This is a description for Jacket 16.', 592.85, 116, 'Apparel', 7);
INSERT INTO Product VALUES (17, 'Sofa 17', 'This is a description for Sofa 17.', 1345.73, 82, 'Toys', 1);
INSERT INTO Product VALUES (18, 'Jacket 18', 'This is a description for Jacket 18.', 38.7, 59, 'Apparel', 4);
INSERT INTO Product VALUES (19, 'Board Game 19', 'This is a description for Board Game 19.', 413.85, 11, 'Apparel', 2);
INSERT INTO Product VALUES (20, 'Tablet 20', 'This is a description for Tablet 20.', 669.03, 110, 'Apparel', 4);
INSERT INTO Product VALUES (21, 'Desk 21', 'This is a description for Desk 21.', 1263.45, 199, 'Apparel', 5);
INSERT INTO Product VALUES (22, 'Board Game 22', 'This is a description for Board Game 22.', 710.63, 126, 'Furniture', 4);
INSERT INTO Product VALUES (23, 'Camera 23', 'This is a description for Camera 23.', 1476.98, 10, 'Toys', 5);
INSERT INTO Product VALUES (24, 'Novel 24', 'This is a description for Novel 24.', 1167.52, 90, 'Electronics', 6);
INSERT INTO Product VALUES (25, 'Camera 25', 'This is a description for Camera 25.', 1109.89, 124, 'Apparel', 3);
INSERT INTO Product VALUES (26, 'Laptop 26', 'This is a description for Laptop 26.', 357.59, 165, 'Toys', 1);
INSERT INTO Product VALUES (27, 'Sofa 27', 'This is a description for Sofa 27.', 1478.94, 97, 'Furniture', 4);
INSERT INTO Product VALUES (28, 'T-shirt 28', 'This is a description for T-shirt 28.', 848.64, 14, 'Apparel', 8);
INSERT INTO Product VALUES (29, 'T-shirt 29', 'This is a description for T-shirt 29.', 551.53, 172, 'Electronics', 4);
INSERT INTO Product VALUES (30, 'Jacket 30', 'This is a description for Jacket 30.', 39.36, 153, 'Toys', 8);
INSERT INTO Orders VALUES (1, 29, 3, 24, '2022-12-28', 8, 6739.04, 'Pending');
INSERT INTO Orders VALUES (2, 21, 1, 18, '2024-10-08', 10, 6443.5, 'Shipped');
INSERT INTO Orders VALUES (3, 1, 2, 24, '2021-08-18', 4, 2403.08, 'Delivered');
INSERT INTO Orders VALUES (4, 8, 7, 28, '2020-02-04', 7, 3532.6200000000003, 'Delivered');
INSERT INTO Orders VALUES (5, 12, 10, 27, '2023-10-30', 1, 380.4, 'Delivered');
INSERT INTO Orders VALUES (6, 11, 2, 4, '2024-03-01', 7, 6023.71, 'Delivered');
INSERT INTO Orders VALUES (7, 9, 11, 26, '2024-05-13', 8, 285.84, 'Cancelled');
INSERT INTO Orders VALUES (8, 9, 6, 12, '2020-12-27', 1, 131.78, 'Pending');
INSERT INTO Orders VALUES (9, 20, 11, 30, '2023-05-05', 3, 1573.8000000000002, 'Delivered');
INSERT INTO Orders VALUES (10, 29, 3, 11, '2023-01-19', 5, 245.25, 'Cancelled');
INSERT INTO Orders VALUES (11, 14, 13, 19, '2023-08-23', 3, 1273.83, 'Shipped');
INSERT INTO Orders VALUES (12, 2, 13, 2, '2020-05-29', 3, 2692.89, 'Delivered');
INSERT INTO Orders VALUES (13, 19, 3, 22, '2024-09-29', 8, 4623.28, 'Shipped');
INSERT INTO Orders VALUES (14, 2, 7, 11, '2020-08-02', 6, 4687.200000000001, 'Cancelled');
INSERT INTO Orders VALUES (15, 20, 7, 4, '2022-06-01', 8, 1643.28, 'Delivered');
INSERT INTO Orders VALUES (16, 3, 3, 25, '2022-03-17', 9, 7899.93, 'Cancelled');
INSERT INTO Orders VALUES (17, 10, 15, 22, '2022-12-01', 7, 6173.58, 'Pending');
INSERT INTO Orders VALUES (18, 28, 9, 11, '2023-11-06', 4, 2514.04, 'Delivered');
INSERT INTO Orders VALUES (19, 10, 1, 27, '2021-02-03', 5, 801.8000000000001, 'Shipped');
INSERT INTO Orders VALUES (20, 22, 3, 15, '2021-08-07', 9, 1983.42, 'Pending');
INSERT INTO Orders VALUES (21, 1, 10, 14, '2022-12-07', 1, 313.88, 'Cancelled');
INSERT INTO Orders VALUES (22, 13, 1, 14, '2020-08-25', 5, 1434.3000000000002, 'Shipped');
INSERT INTO Orders VALUES (23, 10, 11, 29, '2020-08-19', 10, 3487.4, 'Shipped');
INSERT INTO Orders VALUES (24, 21, 8, 17, '2023-08-09', 9, 8363.970000000001, 'Cancelled');
INSERT INTO Orders VALUES (25, 21, 14, 10, '2020-07-07', 6, 5404.08, 'Pending');
INSERT INTO Orders VALUES (26, 6, 7, 26, '2021-10-31', 2, 1249.68, 'Cancelled');
INSERT INTO Orders VALUES (27, 22, 4, 15, '2020-05-26', 1, 562.01, 'Cancelled');
INSERT INTO Orders VALUES (28, 17, 15, 20, '2022-11-28', 7, 6284.25, 'Shipped');
INSERT INTO Orders VALUES (29, 24, 11, 5, '2022-07-02', 6, 2464.5, 'Delivered');
INSERT INTO Orders VALUES (30, 30, 14, 12, '2021-01-26', 10, 8881.6, 'Cancelled');



-- Add 'city' column to Employee table
ALTER TABLE Employee ADD COLUMN city VARCHAR(100);

-- Add 'city' column to Customer table
ALTER TABLE Customer ADD COLUMN city VARCHAR(100);

-- Update Employee table with city values
UPDATE Employee SET city = 'New York' WHERE employee_id = 1;
UPDATE Employee SET city = 'Los Angeles' WHERE employee_id = 2;
UPDATE Employee SET city = 'Chicago' WHERE employee_id = 3;
UPDATE Employee SET city = 'Houston' WHERE employee_id = 4;
UPDATE Employee SET city = 'Phoenix' WHERE employee_id = 5;
-- ... continue up to employee_id = 30 with varied cities

-- Update Customer table with city values
UPDATE Customer SET city = 'Dallas' WHERE customer_id = 1;
UPDATE Customer SET city = 'San Diego' WHERE customer_id = 2;
UPDATE Customer SET city = 'San Jose' WHERE customer_id = 3;
UPDATE Customer SET city = 'Austin' WHERE customer_id = 4;
UPDATE Customer SET city = 'Jacksonville' WHERE customer_id = 5;
-- ... continue up to customer_id = 30 with varied cities


UPDATE Employee
SET city = 
    CASE 
        WHEN employee_id % 5 = 1 THEN 'New York'
        WHEN employee_id % 5 = 2 THEN 'Los Angeles'
        WHEN employee_id % 5 = 3 THEN 'Chicago'
        WHEN employee_id % 5 = 4 THEN 'Houston'
        ELSE 'Phoenix'
    END;

-- Update Customer table
UPDATE Customer
SET city = 
    CASE 
        WHEN customer_id % 5 = 1 THEN 'New York'
        WHEN customer_id % 5 = 2 THEN 'Los Angeles'
        WHEN customer_id % 5 = 3 THEN 'Chicago'
        WHEN customer_id % 5 = 4 THEN 'Houston'
        ELSE 'Phoenix'
    END;
