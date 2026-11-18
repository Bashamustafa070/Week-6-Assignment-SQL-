-- ==========================================================
-- Week 6 Assignment: SQL Joins and Relationships
-- Database: MySQL Classic Models
-- ==========================================================

-- Question 1: INNER JOIN – Employees and Offices
-- Retrieves employee contact details along with their office code using an INNER JOIN.
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o 
    ON e.officeCode = o.officeCode;


-- Question 2: LEFT JOIN – Products and Product Lines
-- Retrieves product details and their corresponding product lines using a LEFT JOIN.
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl 
    ON p.productLine = pl.productLine;


-- Question 3: RIGHT JOIN – Customers and Orders
-- Retrieves the order details for the first 10 orders using a RIGHT JOIN between customers and orders.
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;