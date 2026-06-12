# Data Quality Report

## Customers Table

**Missing Values:**
None

**Status:**
Good

---

## Orders Table

### Missing Values

| Column                        | Missing Count |
| ----------------------------- | ------------- |
| order_approved_at             | 160           |
| order_delivered_carrier_date  | 1,783         |
| order_delivered_customer_date | 2,965         |

**Reason:**

Some orders were cancelled or not delivered.

**Action:**

Keep records and handle appropriately during preprocessing.

---

## Order Items Table

**Missing Values:**
None

**Status:**
Good

---

## Payments Table

**Missing Values:**
None

**Status:**
Good

---

## Reviews Table

### Missing Values

| Column                 | Missing Count |
| ---------------------- | ------------- |
| review_comment_title   | 87,656        |
| review_comment_message | 58,247        |

**Reason:**

Many customers only provided ratings without textual reviews.

**Action:**

Text columns will not be mandatory for initial analytics.

---

## Products Table

### Missing Values

| Column                     | Missing Count |
| -------------------------- | ------------- |
| product_category_name      | 610           |
| product_name_lenght        | 610           |
| product_description_lenght | 610           |
| product_photos_qty         | 610           |
| product_weight_g           | 2             |
| product_length_cm          | 2             |
| product_height_cm          | 2             |
| product_width_cm           | 2             |

**Action:**

Imputation and category handling will be performed during preprocessing.

---

## Sellers Table

**Missing Values:**
None

**Status:**
Good

---

## Overall Assessment

Dataset quality is high.

### Major Issues

1. Missing product metadata.
2. Missing review text.
3. Missing delivery timestamps for some orders.

### Dataset Suitability

The dataset remains suitable for:

* SQL Analytics
* Customer Segmentation
* Sales Forecasting
* Customer Lifetime Value Analysis
* AI-Powered Business Intelligence
