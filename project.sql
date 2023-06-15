/* 
This project contains 8 tables:

    Customers: customer data
    Employees: all employee information
    Offices: sales office information
    Orders: customers' sales orders
    OrderDetails: sales order line for each sales order
    Payments: customers' payment records
    Products: a list of scale model cars
    ProductLines: a list of product line categories

*/

---- Query 1 ----

SELECT 'customers' as table_name, 13 as number_of_attributes, count(*) as number_of_rows
FROM customers

UNION ALL

SELECT 'products' as table_name, 9 as number_of_attributes, count(*) as number_of_rows
FROM products

UNION ALL

SELECT 'productlines' as table_name, 4 as number_of_attributes, count(*) as number_of_rows
FROM productlines

UNION ALL

SELECT 'orders' as table_name, 7 as number_of_attributes, count(*) as number_of_rows
FROM orders

UNION ALL

SELECT 'orderdetails' as table_name, 5 as number_of_attributes, count(*) as number_of_rows
FROM orderdetails

UNION ALL

SELECT 'payments' as table_name, 4 as number_of_attributes, count(*) as number_of_rows
FROM payments

UNION ALL

SELECT 'employees' as table_name, 8 as number_of_attributes, count(*) as number_of_rows
FROM employees

UNION ALL

SELECT 'offices' as table_name, 9 as number_of_attributes, count(*) as number_of_rows
FROM offices

------------------------









