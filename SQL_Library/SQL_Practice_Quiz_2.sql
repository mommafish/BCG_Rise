-- WITH DISTINCT, ORDER BY DESC ASC, OFFSET n ROWS FETCH NEXT n ROWS ONLY, WHERE IN OR AND LIKE.


-- Challenge 1: Retrieve Data for Transportation Reports
-- The logistics manager at Adventure Works has asked you to generate some reports containing details of
-- the company’s customers to help to reduce transportation costs.

-- 1. Retrieve a list of cities
    -- Initially, you need to produce a list of all of you customers' locations. Write a Transact-SQL query that
    -- queries the Address table and retrieves all values for City and StateProvince, removing duplicates.

SELECT DISTINCT City, StateProvince
FROM saleslt.Address

--  2. Retrieve the heaviest products
    -- Transportation costs are increasing and you need to identify the heaviest products. Retrieve the names
    -- of the top ten percent of products by weight.

SELECT TOP 10 Name, Weight
FROM saleslt.Product
ORDER BY Weight DESC

-- 3. Retrieve the heaviest 100 products not including the heaviest ten
    -- The heaviest ten products are transported by a specialist carrier; therefore, you need to modify the
    -- previous query to list the heaviest 100 products not including the heaviest ten.

SELECT Name, Weight
FROM saleslt.Product
ORDER BY Weight DESC
OFFSET 10 ROWS FETCH NEXT 100 ROWS ONLY



-- Challenge 2: Retrieve Product Data
-- The Production Manager at Adventure Works would like you to create some reports listing details of the
-- products that you sell.
-- Tip: Review the documentation for the WHERE and LIKE keywords in the Transact-SQL Reference.

-- 1. Retrieve product details for product model 1
    -- Initially, you need to find the names, colors, and sizes of the products with a product model ID 1.

SELECT name ,Color,size, ProductModelID
FROM SalesLT.Product
WHERE productModelID = 1

-- 2. Filter products by color and size
    -- Retrieve the product number and name of the products that have a color of 'black', 'red', or 'white' and
    -- a size of 'S' or 'M'.

SELECT name, ProductNumber, color, size
FROM SalesLT.Product
WHERE color in ('black','red','white') or size in ('s','m') -- Retrieve when color in range OR size in range

SELECT name, ProductNumber, color, size
FROM SalesLT.Product
WHERE color in ('black','red','white') and size in ('s','m') -- Retrieve when color in range AND size in range

-- 3. Filter products by product number
    -- Retrieve the product number, name, and list price of products whose product number begins 'BK-'.

SELECT ProductNumber, name, ListPrice
FROM SalesLT.Product
WHERE productnumber like 'BK-%' -------------- for inbetween use %word% --- for before use %word