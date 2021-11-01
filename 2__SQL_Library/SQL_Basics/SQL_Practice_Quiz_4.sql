-- FOR IU_4.3.8_-_individual_assignment1

-- Challenge 1: Retrieve Customer Addresses
-- Customers can have two kinds of address: a main office address and a shipping address. The accounts
-- department want to ensure that the main office address is always used for billing, and have asked you to
-- write a query that clearly identifies the different types of address for each customer.

-- 1. Retrieve billing addresses
--     Write a query that retrieves the company name, first line of the street address, city, and a column
--     named AddressType with the value ‘Billing’ for customers where the address type in the
--     SalesLT.CustomerAddress table is ‘Main Office’.

SELECT * FROM saleslt.Customer -- check
SELECT * FROM saleslt.Address -- check
SELECT * FROM saleslt.CustomerAddress -- check

SELECT c.companyname, a.addressline1, a.city, ca.addresstype, 'billing' as BillingAddressType
FROM SalesLT.Customer as c
JOIN SalesLT.CustomerAddress as ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address as a ON ca.AddressID = a.AddressID
WHERE ca.addresstype = 'Main Office' -- result 407 rows

-- 2. Retrieve shipping addresses
    -- Write a similar query that retrieves the company name, first line of the street address, city, and a column
    -- named AddressType with the value ‘Shipping’ for customers where the address type in the
    -- SalesLT.CustomerAddress table is ‘Shipping’.

SELECT c.companyname, a.addressline1, a.city, ca.addresstype, 'shipping' as BillingAddressType
FROM SalesLT.Customer as c
JOIN SalesLT.CustomerAddress as ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address as a ON ca.AddressID = a.AddressID
WHERE ca.addresstype = 'Shipping' -- result 10 rows

-- 3. Combine billing and shipping addresses
-- Combine the results returned by the two queries to create a list of all customer addresses that is sorted
-- by company name and then address type.

SELECT c.companyname, a.addressline1, a.city, ca.addresstype, 'billing' as BillingAddressType
FROM SalesLT.Customer as c
JOIN SalesLT.CustomerAddress as ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address as a ON ca.AddressID = a.AddressID
WHERE ca.addresstype = 'Main Office' -- result 407 rows

UNION

SELECT c.companyname, a.addressline1, a.city, ca.addresstype, 'shipping' as BillingAddressType
FROM SalesLT.Customer as c
JOIN SalesLT.CustomerAddress as ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address as a ON ca.AddressID = a.AddressID
WHERE ca.addresstype = 'Shipping' -- result 10 rows
ORDER BY c.CompanyName, ca.AddressType



-- Challenge 2: Filter Customer Addresses
-- You have created a master list of all customer addresses, but now you have been asked to create filtered
-- lists that show which customers have only a main office address, and which customers have both a main
-- office and a shipping address.
-- Tip: Review the documentation for the EXCEPT and INTERSECT operators in the Transact-SQL Reference.

-- 1. Retrieve customers with only a main office address
    -- Write a query that returns the company name of each company that appears in a table of customers
    -- with a ‘Main Office’ address, but not in a table of customers with a ‘Shipping’ address.

SELECT c.companyname, a.addressline1, a.city, ca.addresstype, 'billing' as BillingAddressType
FROM SalesLT.Customer as c
JOIN SalesLT.CustomerAddress as ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address as a ON ca.AddressID = a.AddressID
WHERE ca.addresstype = 'Main Office' -- result 407 rows

INTERSECT -- resuilt will show 0 rows because there is no record

SELECT c.companyname, a.addressline1, a.city, ca.addresstype, 'shipping' as BillingAddressType
FROM SalesLT.Customer as c
JOIN SalesLT.CustomerAddress as ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address as a ON ca.AddressID = a.AddressID
WHERE ca.addresstype = 'Shipping' -- result 10 rows


-- 2. Retrieve only customers with both a main office address and a shipping address
    -- Write a query that returns the company name of each company that appears in a table of customers
    -- with a ‘Main Office’ address, and also in a table of customers with a ‘Shipping’ address

SELECT c.companyname, a.addressline1, a.city, ca.addresstype, 'billing' as BillingAddressType
FROM SalesLT.Customer as c
JOIN SalesLT.CustomerAddress as ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address as a ON ca.AddressID = a.AddressID
WHERE ca.addresstype = 'Main Office' -- result 407 rows

EXCEPT -- means only focus on 'Main Office' -- result 407 rows

SELECT c.companyname, a.addressline1, a.city, ca.addresstype, 'shipping' as BillingAddressType
FROM SalesLT.Customer as c
JOIN SalesLT.CustomerAddress as ca ON c.CustomerID = ca.CustomerID
JOIN SalesLT.Address as a ON ca.AddressID = a.AddressID
WHERE ca.addresstype = 'Shipping' -- result 10 rows
