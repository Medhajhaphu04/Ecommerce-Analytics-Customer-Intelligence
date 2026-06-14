-- What percentage of customers purchase more than once?

-- query1:
WITH customer_orders AS
(
    SELECT
        c.customer_unique_id,
        COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)

SELECT
    CASE
        WHEN total_orders = 1
        THEN 'One-Time Customer'
        ELSE 'Repeat Customer'
    END AS customer_type,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER(),
        2
    ) AS percentage
FROM customer_orders
GROUP BY customer_type;

-- Build customer-level metrics.

-- query2:
WITH rfm AS
(
    SELECT
        c.customer_unique_id,

        MAX(o.order_purchase_timestamp) AS last_purchase,

        COUNT(DISTINCT o.order_id) AS frequency,

        ROUND(
            SUM(p.payment_value),
            2
        ) AS monetary

    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN payments p
        ON o.order_id = p.order_id

    GROUP BY c.customer_unique_id
)

SELECT *
FROM rfm;

-- Do a small number of customers generate most revenue?

-- query3:
WITH customer_revenue AS
(
    SELECT
        c.customer_unique_id,
        SUM(p.payment_value) AS revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN payments p
        ON o.order_id = p.order_id
    GROUP BY c.customer_unique_id
),

ranked_customers AS
(
    SELECT
        *,
        NTILE(10) OVER
        (
            ORDER BY revenue DESC
        ) AS revenue_decile
    FROM customer_revenue
)

SELECT
    revenue_decile,
    ROUND(
        SUM(revenue),
        2
    ) AS revenue_generated
FROM ranked_customers
GROUP BY revenue_decile
ORDER BY revenue_decile;

-- How is revenue changing over time?

-- query4:
SELECT
    DATE_TRUNC(
        'month',
        o.order_purchase_timestamp
    ) AS month,

    ROUND(
        SUM(p.payment_value),
        2
    ) AS revenue

FROM orders o
JOIN payments p
    ON o.order_id = p.order_id

GROUP BY month
ORDER BY month;

-- Is revenue growing or declining?

-- query5:
WITH monthly_revenue AS
(
    SELECT
        DATE_TRUNC(
            'month',
            o.order_purchase_timestamp
        ) AS month,

        SUM(p.payment_value) AS revenue

    FROM orders o
    JOIN payments p
        ON o.order_id = p.order_id

    GROUP BY month
)

SELECT
    month,
    revenue,

    LAG(revenue)
    OVER(
        ORDER BY month
    ) AS previous_month,

    ROUND(
        (
            revenue
            -
            LAG(revenue)
            OVER(ORDER BY month)
        )
        /
        LAG(revenue)
        OVER(ORDER BY month)
        * 100,
        2
    ) AS growth_percentage

FROM monthly_revenue;

-- How many new customers are acquired every month?

-- query6:
SELECT
    DATE_TRUNC(
        'month',
        MIN(o.order_purchase_timestamp)
    ) AS acquisition_month,

    COUNT(
        DISTINCT c.customer_unique_id
    ) AS new_customers

FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id

GROUP BY acquisition_month
ORDER BY acquisition_month;

-- Are customers spending more over time?

-- query7:
SELECT
    DATE_TRUNC(
        'month',
        o.order_purchase_timestamp
    ) AS month,

    ROUND(
        AVG(p.payment_value),
        2
    ) AS avg_order_value

FROM orders o
JOIN payments p
    ON o.order_id = p.order_id

GROUP BY month
ORDER BY month;

-- How much revenue comes from VIP customers?

-- query8:
WITH customer_revenue AS
(
    SELECT
        c.customer_unique_id,
        SUM(p.payment_value) AS revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN payments p
        ON o.order_id = p.order_id
    GROUP BY c.customer_unique_id
)

SELECT
    CASE
        WHEN revenue > 1000
            THEN 'VIP'

        WHEN revenue > 500
            THEN 'Premium'

        ELSE 'Regular'
    END AS segment,

    COUNT(*) AS customers,

    ROUND(
        SUM(revenue),
        2
    ) AS total_revenue

FROM customer_revenue

GROUP BY segment
ORDER BY total_revenue DESC;

-- Which categories generate the highest revenue?

-- query9:
SELECT
    p.product_category_name,
    ROUND(
        SUM(oi.price),
        2
    ) AS revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;

-- Customer Intelligence Dataset

-- query10:
WITH customer_features AS
(
    SELECT
        c.customer_unique_id,

        COUNT(DISTINCT o.order_id) AS frequency,

        ROUND(
            SUM(p.payment_value),
            2
        ) AS monetary,

        ROUND(
            AVG(p.payment_value),
            2
        ) AS avg_order_value,

        MAX(o.order_purchase_timestamp)
            AS last_purchase

    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN payments p
        ON o.order_id = p.order_id

    GROUP BY c.customer_unique_id
)

SELECT *
FROM customer_features;

