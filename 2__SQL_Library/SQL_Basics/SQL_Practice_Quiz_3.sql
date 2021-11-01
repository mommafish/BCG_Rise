--- FROM IU4.3.6-_Quiz_JOINS_Inner_Outer


-- Challenge 1: Generate Invoice Reports
-- Adventure Works Cycles sells directly to retailers, who must be invoiced for their orders. You have been
-- tasked with writing a query to generate a list of invoices to be sent to customers.

-- 1. Retrieve customer orders
    -- As an initial step towards generating the invoice report, write a query that returns the company name
    -- from the SalesLT.Customer table, and the sales order ID and total due from the
    -- SalesLT.SalesOrderHeader table.

SELECT c.companyname, soh.salesorderid, soh.totaldue
FROM SalesLT.Customer as c 
JOIN SalesLT.SalesOrderHeader as soh
ON c.customerID = soh.customerID

-- 2. Retrieve customer orders with addresses
-- Extend your customer orders query to include the Main Office address for each customer, including the
-- full street address, city, state or province, postal code, and country or region
-- extend table from previous question with Address details

SELECT * FROM SalesLT.Customer -- Include customer ID
SELECT * FROM SalesLT.CustomerAddress --- include main office
SELECT * FROM SalesLT.Address --- include full street address, city, state or province, postal code, and country or region

SELECT c.companyname, soh.salesorderid, soh.totaldue, ca.addresstype, a.addressline1, a.city, a.stateprovince, a.postalcode, a.countryregion
FROM saleslt.Customer as c
JOIN SalesLT.SalesOrderHeader as soh
ON c.customerID = soh.customerID
JOIN SalesLT.CustomerAddress as ca
ON c.CustomerID = ca.CustomerID and AddressType = 'Main Office'
JOIN SalesLT.Address as a
on ca.AddressID = a.AddressID


-- Challenge 2: Retrieve Sales Data
-- As you continue to work with the Adventure Works customer and sales data, you must create queries
-- for reports that have been requested by the sales team.

-- 1. Retrieve a list of all customers and their orders
    -- The sales manager wants a list of all customer companies and their contacts (first name and last name),
    -- showing the sales order ID and total due for each order they have placed. Customers who have not
    -- placed any orders should be included at the bottom of the list with NULL values for the order ID and
    -- total due.

SELECT * FROM SalesLT.Customer -- Get company name, First name, last name
SELECT * FROM SalesLT.SalesOrderHeader --- Get Sales order ID, totaldue and order by descending level

SELECT c.CompanyName, c.FirstName, c.LastName, soh.SalesOrderID, soh.TotalDue
FROM SalesLT.Customer as c
LEFT JOIN SalesLT.SalesOrderHeader as soh --- returns all rows from the left table(my SalesLT.Customer) even when no matches
ON c.customerID = soh.CustomerID
ORDER BY SalesOrderID DESC

-- 2. Retrieve a list of customers with no address
    -- A sales employee has noticed that Adventure Works does not have address information for all
    -- customers. You must write a query that returns a list of customer IDs, company names, contact names
    -- (first name and last name), and phone numbers for customers with no address stored in the database.

SELECT * FROM SalesLT.Customer -- Get CustomerID, companyname, Firstname, LastName, phone 
SELECT * FROM SalesLT.CustomerAddress -- Check if object is NULL TRUE then add into list

SELECT c.CustomerID, c.CompanyName, c.FirstName, c.LastName, c.Phone
FROM SalesLT.Customer as c 
LEFT JOIN SalesLT.CustomerAddress as ca --- returns all rows from the left table(my SalesLT.Customer) even when no matches
ON c.CustomerID = ca.CustomerID
WHERE ca.AddressID is NULL

-- 3. Retrieve a list of customers and products without orders
    -- Some customers have never placed orders, and some products have never been ordered. Create a
    -- query that returns a column of customer IDs for customers who have never placed an order, and a
    -- column of product IDs for products that have never been ordered. Each row with a customer ID should
    -- have a NULL product ID (because the customer has never ordered a product) and each row with a
    -- product ID should have a NULL customer ID (because the product has never been ordered by a
    -- customer).

    select * from saleslt.Customer --- Get customerID who never placed an order
    select * from saleslt.Product
    select * from saleslt.SalesOrderDetail -- Get productID for products never been ordered

SELECT c.customerid, p.productid
FROM saleslt.Customer as c
FULL JOIN saleslt.SalesOrderHeader as soh -- Get Left and Right Tables from Customer ID
ON c.customerid = soh.customerid
FULL JOIN SalesLT.SalesOrderDetail as sod -- Get Left and Right Tables from SalesOrderID
ON sod.SalesOrderID = soh.SalesOrderID
FULL JOIN SalesLT.Product as p -- Get Left and Right Tables from Prodcut ID (leave out the centre with NULL)
ON sod.ProductID = p.ProductID
WHERE soh.SalesOrderID is NULL
ORDER BY ProductID