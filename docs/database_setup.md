# Database Setup

## Overview

The AI-Powered E-Commerce Analytics & Customer Intelligence Platform uses PostgreSQL as its primary relational database management system.

The database stores customer, order, product, payment, review, and seller information from the Olist Brazilian E-Commerce Dataset. The relational structure enables advanced SQL analytics, feature engineering, customer intelligence, forecasting, and machine learning workflows.

---

## Database Configuration

### Database Management System

PostgreSQL 18

### Database Name

ecommerce_analytics

### Development Environment

* PostgreSQL
* pgAdmin 4

---

## Dataset Source

Dataset: Olist Brazilian E-Commerce Public Dataset

The dataset contains information about:

* Customers
* Orders
* Order Items
* Products
* Sellers
* Payments
* Reviews

The original data was provided in CSV format and imported into PostgreSQL tables.

---

## Database Schema

The database consists of seven core tables.

### customers

Stores customer information and location details.

Primary Key:

```text
customer_id
```

---

### orders

Stores order lifecycle information including purchase, approval, shipping, and delivery timestamps.

Primary Key:

```text
order_id
```

Foreign Key:

```text
customer_id
```

References:

```text
customers.customer_id
```

---

### products

Stores product metadata and product characteristics.

Primary Key:

```text
product_id
```

---

### sellers

Stores seller information and geographical details.

Primary Key:

```text
seller_id
```

---

### order_items

Stores products purchased within each order.

Foreign Keys:

```text
order_id
product_id
seller_id
```

References:

```text
orders
products
sellers
```

---

### payments

Stores transaction and payment information.

Foreign Key:

```text
order_id
```

References:

```text
orders.order_id
```

---

### reviews

Stores customer ratings and review information.

Foreign Key:

```text
order_id
```

References:

```text
orders.order_id
```

---

## Entity Relationships

The business workflow represented by the database is:

Customer
→ Places Order
→ Purchases Products
→ Makes Payment
→ Receives Delivery
→ Submits Review

The relational structure enables complex analytical queries using joins, aggregations, common table expressions (CTEs), and window functions.

---

## Data Import Process

The following CSV files were imported into PostgreSQL:

* olist_customers_dataset.csv
* olist_orders_dataset.csv
* olist_order_items_dataset.csv
* olist_products_dataset.csv
* olist_sellers_dataset.csv
* olist_order_payments_dataset.csv
* olist_order_reviews_dataset.csv

The geolocation dataset was excluded from Version 1 of the project because it is not required for customer analytics, forecasting, or customer intelligence workflows.

---

## Validation

After importing the data, validation queries were executed to verify:

* Row counts
* Table integrity
* Primary key consistency
* Foreign key relationships

Validation ensured that the imported data matched the original dataset.

---

## Purpose Within The Project

The PostgreSQL database serves as the analytical backbone of the platform.

The database supports:

* Revenue Analytics
* Customer Analytics
* Product Analytics
* Seller Analytics
* Customer Satisfaction Analysis
* Customer Segmentation
* Sales Forecasting
* Customer Lifetime Value Analysis
* AI-Generated Business Insights

All downstream analytics, machine learning models, and dashboard components will consume data directly from this relational database.
