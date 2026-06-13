-- Revenue KPIs

-- QUERY1: Total Revenue
SELECT
    ROUND(
        SUM(payment_value),
        2
    ) AS total_revenue
FROM payments;

-- QUERY2: Total Customers
SELECT
    COUNT(*) AS total_customers
FROM customers;

-- QUERY3: Total Orders
SELECT
    COUNT(*) AS total_orders
FROM orders;

-- QUERY4: Average Order Value
SELECT
    ROUND(
        AVG(payment_value),
        2
    ) AS average_order_value
FROM payments;

------------------------------------------------------------------

-- ORDER ANALYTICS

-- QUERY5: Order Status Distribution
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- QUERY6: Order Status Percentage
SELECT
    order_status,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM orders),
        2
    ) AS percentage
FROM orders
GROUP BY order_status
ORDER BY percentage DESC;

----------------------------------------------------------------------

-- Customer Geography Analytics

-- QUERY7: Customers by State
SELECT
    customer_state,
    COUNT(*) AS customer_count
FROM customers
GROUP BY customer_state
ORDER BY customer_count DESC;

-- QUERY8: Top 10 Customer States
SELECT
    customer_state,
    COUNT(*) AS customer_count
FROM customers
GROUP BY customer_state
ORDER BY customer_count DESC
LIMIT 10;

-- QUERY9: Top 10 Customer Cities
SELECT
    customer_city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY customer_city
ORDER BY customer_count DESC
LIMIT 10;

------------------------------------------------------------

-- Seller Analytics

-- QUERY10: Sellers by State
SELECT
    seller_state,
    COUNT(*) AS seller_count
FROM sellers
GROUP BY seller_state
ORDER BY seller_count DESC;

-- QUERY11: Top Seller Cities
SELECT
    seller_city,
    COUNT(*) AS seller_count
FROM sellers
GROUP BY seller_city
ORDER BY seller_count DESC
LIMIT 10;

-------------------------------------------------------------

-- Product Analytics

-- QUERY12: Product Categories
SELECT
    product_category_name,
    COUNT(*) AS product_count
FROM products
GROUP BY product_category_name
ORDER BY product_count DESC;

-- QUERY13: Top Categories
SELECT
    product_category_name,
    COUNT(*) AS product_count
FROM products
GROUP BY product_category_name
ORDER BY product_count DESC
LIMIT 10;

----------------------------------------------------------------

-- Payment Analytics

-- QUERY14: Payment Method Distribution
SELECT
    payment_type,
    COUNT(*) AS total_transactions
FROM payments
GROUP BY payment_type
ORDER BY total_transactions DESC;

-- QUERY15: Revenue by Payment Method
SELECT
    payment_type,
    ROUND(
        SUM(payment_value),
        2
    ) AS revenue
FROM payments
GROUP BY payment_type
ORDER BY revenue DESC;

-- QUERY16: Average Installments
SELECT
    ROUND(
        AVG(payment_installments),
        2
    ) AS avg_installments
FROM payments;


--------------------------------------------------------------

-- HAVING Clause Practice

-- QUERY 17: 
SELECT
    customer_state,
    COUNT(*) AS customer_count
FROM customers
GROUP BY customer_state
HAVING COUNT(*) > 1000
ORDER BY customer_count DESC;

-- QUERY 18:
SELECT
    product_category_name,
    COUNT(*) AS product_count
FROM products
GROUP BY product_category_name
HAVING COUNT(*) > 100
ORDER BY product_count DESC;

------------------------------------------------------------------

-- CASE WHEN Practice

-- QUERY19:
SELECT
    order_id,
    CASE
        WHEN order_status = 'delivered'
        THEN 'Successful'

        WHEN order_status = 'canceled'
        THEN 'Cancelled'

        ELSE 'In Progress'
    END AS order_category
FROM orders;

-- QUERY20: 
SELECT
    payment_value,
    CASE
        WHEN payment_value > 500
        THEN 'High Value'

        WHEN payment_value > 100
        THEN 'Medium Value'

        ELSE 'Low Value'
    END AS payment_segment
FROM payments;