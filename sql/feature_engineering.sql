-- creating view for creating different features for customers

DROP VIEW IF EXISTS customer_features_v2;

CREATE VIEW customer_features_v2 AS

SELECT
    c.customer_unique_id,

    COUNT(DISTINCT o.order_id) AS frequency,

    ROUND(SUM(p.payment_value),2) AS monetary,

    ROUND(AVG(p.payment_value),2) AS avg_order_value,

    MAX(o.order_purchase_timestamp) AS last_purchase,

    MIN(o.order_purchase_timestamp) AS first_purchase,

    COUNT(
        DISTINCT pr.product_category_name
    ) AS category_count,

    ROUND(
        AVG(r.review_score),
        2
    ) AS avg_review_score,

    ROUND(
        AVG(
            EXTRACT(
                DAY FROM
                (
                    o.order_delivered_customer_date
                    -
                    o.order_purchase_timestamp
                )
            )
        ),
        2
    ) AS avg_delivery_days,

    ROUND(
        SUM(oi.freight_value),
        2
    ) AS total_freight_paid

FROM customers c

JOIN orders o
    ON c.customer_id = o.customer_id

JOIN payments p
    ON o.order_id = p.order_id

JOIN order_items oi
    ON o.order_id = oi.order_id

JOIN products pr
    ON oi.product_id = pr.product_id

LEFT JOIN reviews r
    ON o.order_id = r.order_id

GROUP BY c.customer_unique_id;