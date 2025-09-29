ALTER TABLE orders 
MODIFY Order_date Date;

ALTER TABLE orders
RENAME COLUMN ï»¿OrderID TO OrderID;


SELECT * FROM orders;
SELECT * FROM customers;
SELECT * FROM productcategory;
SELECT * FROM products;


SELECT 
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city,
    o.Order_date AS order_date,
    o.Quantity AS order_qty,
    p.ProdName AS product_name,
    p.Price AS product_price,
    cat.CategoryName AS category_name,
    (o.Quantity * p.Price) AS total_sales
FROM Orders o
JOIN Customers c 
    ON o.CustomerID = c.CustomerID
JOIN Products p 
    ON o.ProdNumber = p.ProdNumber
JOIN productcategory cat 
    ON p.Category = cat.CategoryID
ORDER BY o.Order_date ASC;

SELECT 
    o.order_date,
    cat.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    (o.Quantity * p.Price) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM Orders o
JOIN Customers c 
    ON o.CustomerID = c.CustomerID
JOIN Products p 
    ON o.ProdNumber = p.ProdNumber
JOIN productcategory cat 
    ON p.Category = cat.CategoryID
ORDER BY o.order_date ASC;

