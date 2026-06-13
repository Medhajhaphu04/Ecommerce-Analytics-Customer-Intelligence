SELECT
    SUM(payment_value) AS total_revenue
FROM payments;

SELECT
    COUNT(*) AS total_orders
FROM orders;

SELECT
    COUNT(*) AS total_customers
FROM customers;