# Data Dictionary

This document describes the structure, purpose, and attributes of each table in the Brazilian E-Commerce Public Dataset by Olist.

---

# Customers Table

**Purpose**

Stores customer identity and location information.

| Column                   | Description                             |
| ------------------------ | --------------------------------------- |
| customer_id              | Unique customer identifier              |
| customer_unique_id       | Unique customer reference across orders |
| customer_zip_code_prefix | Customer ZIP code prefix                |
| customer_city            | Customer city                           |
| customer_state           | Customer state                          |

---

# Orders Table

**Purpose**

Stores order lifecycle information.

| Column                        | Description                |
| ----------------------------- | -------------------------- |
| order_id                      | Unique order identifier    |
| customer_id                   | Customer placing the order |
| order_status                  | Current order status       |
| order_purchase_timestamp      | Purchase timestamp         |
| order_approved_at             | Order approval timestamp   |
| order_delivered_carrier_date  | Date shipped to carrier    |
| order_delivered_customer_date | Delivery date              |
| order_estimated_delivery_date | Estimated delivery date    |

---

# Order Items Table

**Purpose**

Stores products purchased within orders.

| Column              | Description                  |
| ------------------- | ---------------------------- |
| order_id            | Associated order             |
| order_item_id       | Item identifier within order |
| product_id          | Purchased product            |
| seller_id           | Seller identifier            |
| shipping_limit_date | Shipping deadline            |
| price               | Product price                |
| freight_value       | Shipping cost                |

---

# Payments Table

**Purpose**

Stores payment information.

| Column               | Description             |
| -------------------- | ----------------------- |
| order_id             | Associated order        |
| payment_sequential   | Payment sequence number |
| payment_type         | Payment method          |
| payment_installments | Number of installments  |
| payment_value        | Amount paid             |

---

# Reviews Table

**Purpose**

Stores customer feedback and satisfaction metrics.

| Column                  | Description               |
| ----------------------- | ------------------------- |
| review_id               | Review identifier         |
| order_id                | Associated order          |
| review_score            | Customer rating (1–5)     |
| review_comment_title    | Review title              |
| review_comment_message  | Review text               |
| review_creation_date    | Review creation date      |
| review_answer_timestamp | Review response timestamp |

---

# Products Table

**Purpose**

Stores product metadata and physical characteristics.

| Column                     | Description            |
| -------------------------- | ---------------------- |
| product_id                 | Product identifier     |
| product_category_name      | Product category       |
| product_name_lenght        | Product name length    |
| product_description_lenght | Description length     |
| product_photos_qty         | Number of photos       |
| product_weight_g           | Product weight (grams) |
| product_length_cm          | Product length (cm)    |
| product_height_cm          | Product height (cm)    |
| product_width_cm           | Product width (cm)     |

---

# Sellers Table

**Purpose**

Stores seller information and geographic details.

| Column                 | Description       |
| ---------------------- | ----------------- |
| seller_id              | Seller identifier |
| seller_zip_code_prefix | Seller ZIP code   |
| seller_city            | Seller city       |
| seller_state           | Seller state      |

---

# Entity Relationship Summary

The dataset follows a relational e-commerce schema:

* One customer can place multiple orders.
* One order can contain multiple order items.
* One order can have one or more payment records.
* One order can have one review.
* One product can appear in multiple order items.
* One seller can sell multiple products through order items.

### Primary Keys

| Table     | Primary Key |
| --------- | ----------- |
| Customers | customer_id |
| Orders    | order_id    |
| Products  | product_id  |
| Sellers   | seller_id   |
| Reviews   | review_id   |

### Foreign Keys

| Table       | Foreign Key | References |
| ----------- | ----------- | ---------- |
| Orders      | customer_id | Customers  |
| Order Items | order_id    | Orders     |
| Order Items | product_id  | Products   |
| Order Items | seller_id   | Sellers    |
| Payments    | order_id    | Orders     |
| Reviews     | order_id    | Orders     |

---

# Business Relevance

This data model enables:

* Customer Analytics
* Revenue Analytics
* Product Performance Analysis
* Seller Performance Analysis
* Customer Segmentation
* Sales Forecasting
* Recommendation Systems
* Explainable AI Applications
* Executive Business Intelligence Reporting
