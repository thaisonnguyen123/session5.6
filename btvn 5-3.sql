SELECT 
    o.order_id,
    c.customer_name,
    SUM(oi.quantity * oi.price) AS total_amount
FROM Orders o
JOIN Customers c 
    ON o.customer_id = c.customer_id
JOIN Order_items oi
    ON o.order_id = oi.order_id
GROUP BY o.order_id, c.customer_name;


SELECT 
    c.customer_id,
    c.customer_name,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id
JOIN Order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.customer_name;


SELECT 
    c.customer_id,
    c.customer_name,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id
JOIN Order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(oi.quantity * oi.price) > 20000000;


SELECT 
    c.customer_id,
    c.customer_name,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id
JOIN Order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_revenue DESC
LIMIT 1;
