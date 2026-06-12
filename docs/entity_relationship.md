# Entity Relationship Documentation

## Overview

The Olist Brazilian E-Commerce Dataset follows a relational database structure consisting of customers, orders, products, sellers, payments, and reviews.

The relationships between these entities enable advanced SQL analytics, customer intelligence, sales forecasting, and machine learning applications.

---

## Entity Relationship Diagram

Refer to:

```text
docs/ERD.png
```

The diagram illustrates the relationships among all tables used in the project.

---

# Primary Keys

| Table     | Primary Key |
| --------- | ----------- |
| customers | customer_id |
| orders    | order_id    |
| products  | product_id  |
| sellers   | seller_id   |
| reviews   | review_id   |

---

# Foreign Key Relationships

| Parent Table | Parent Key  | Child Table | Foreign Key |
| ------------ | ----------- | ----------- | ----------- |
| customers    | customer_id | orders      | customer_id |
| orders       | order_id    | order_items | order_id    |
| products     | product_id  | order_items | product_id  |
| sellers      | seller_id   | order_items | seller_id   |
| orders       | order_id    | payments    | order_id    |
| orders       | order_id    | reviews     | order_id    |

---

# Relationship Descriptions

## Customers → Orders

customers.customer_id

=

orders.customer_id

Relationship Type:

One-to-Many

Business Meaning:

A single customer can place multiple orders over time.

---

## Orders → Order Items

orders.order_id

=

order_items.order_id

Relationship Type:

One-to-Many

Business Meaning:

An order may contain multiple products.

---

## Products → Order Items

products.product_id

=

order_items.product_id

Relationship Type:

One-to-Many

Business Meaning:

A product can appear in many different orders.

---

## Sellers → Order Items

sellers.seller_id

=

order_items.seller_id

Relationship Type:

One-to-Many

Business Meaning:

A seller can sell multiple products across multiple orders.

---

## Orders → Payments

orders.order_id

=

payments.order_id

Relationship Type:

One-to-Many

Business Meaning:

An order may contain one or more payment records.

---

## Orders → Reviews

orders.order_id

=

reviews.order_id

Relationship Type:

One-to-One / One-to-Many

Business Meaning:

Customers can provide reviews for completed orders.

---

# Business Flow

The business process represented by the dataset can be summarized as:

Customer
→ Places Order
→ Purchases Products
→ Pays For Order
→ Receives Delivery
→ Provides Review

---

# Analytics Opportunities

The relational structure enables the following analyses:

## Revenue Analytics

* Revenue by product
* Revenue by category
* Revenue by seller
* Revenue by customer

---

## Customer Analytics

* Customer lifetime value
* Purchase frequency
* Repeat customer analysis
* Customer segmentation

---

## Product Analytics

* Best-selling products
* Product demand trends
* Category performance

---

## Seller Analytics

* Seller performance
* Seller revenue ranking
* Seller rating analysis

---

## Customer Satisfaction Analytics

* Review score analysis
* Product satisfaction analysis
* Delivery performance analysis

---

# Tables Used in Version 1

The following tables will be used in the first version of the project:

* customers
* orders
* order_items
* products
* sellers
* payments
* reviews

The geolocation table is excluded from Version 1 because the current project scope focuses on customer intelligence, sales analytics, forecasting, and business insight generation.
