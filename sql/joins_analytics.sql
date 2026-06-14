-- Customer Revenue Analysis

-- query1: Which customers generate the most revenue?
SELECT
    c.customer_unique_id,
    ROUND(
        SUM(p.payment_value),
        2
    ) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY c.customer_unique_id
ORDER BY total_spent DESC
LIMIT 10;

------------------------------------------------------------------

-- Customer Order Frequency

--query2: Which customers order most frequently?

SELECT
    c.customer_unique_id,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
ORDER BY total_orders DESC
LIMIT 10;

--------------------------------------------------------------------

-- Product Revenue Analysis

--query3: Which products generate the highest revenue?
SELECT
    product_id,
    ROUND(
        SUM(price),
        2
    ) AS revenue
FROM order_items
GROUP BY product_id
ORDER BY revenue DESC
LIMIT 10;

---------------------------------------------------------------------

-- Category Revenue Analysis

--query4: Which categories drive revenue?
SELECT
    p.product_category_name,
    ROUND(
        SUM(oi.price),
        2
    ) AS category_revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY category_revenue DESC
LIMIT 10;

--------------------------------------------------------------------

-- Seller Revenue Analysis

-- query5: Which sellers generate the most revenue?
SELECT
    seller_id,
    ROUND(
        SUM(price),
        2
    ) AS seller_revenue
FROM order_items
GROUP BY seller_id
ORDER BY seller_revenue DESC
LIMIT 10;

----------------------------------------------------------------------

-- Seller Performance by State

-- query6: 
SELECT
    s.seller_state,
    ROUND(
        SUM(oi.price),
        2
    ) AS revenue
FROM sellers s
JOIN order_items oi
    ON s.seller_id = oi.seller_id
GROUP BY s.seller_state
ORDER BY revenue DESC;

----------------------------------------------------------------------------

-- Customer Satisfaction Analysis

-- query7: Which review scores are most common?
SELECT
    review_score,
    COUNT(*) AS total_reviews
FROM reviews
GROUP BY review_score
ORDER BY review_score;

--------------------------------------------------------------------------

-- Revenue vs Review Score

-- query8: 
SELECT
    r.review_score,
    ROUND(
        AVG(p.payment_value),
        2
    ) AS avg_order_value
FROM reviews r
JOIN payments p
    ON r.order_id = p.order_id
GROUP BY r.review_score
ORDER BY r.review_score;

----------------------------------------------------------------------------

-- Delivery Performance

-- query9: How long does delivery take?
SELECT
    AVG(
        EXTRACT(
            DAY FROM
            (
                order_delivered_customer_date
                -
                order_purchase_timestamp
            )
        )
    )
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;

--------------------------------------------------------------------------

-- Top Cities by Revenue

- query10:
SELECT
    c.customer_city,
    ROUND(
        SUM(p.payment_value),
        2
    ) AS revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY c.customer_city
ORDER BY revenue DESC
LIMIT 10;