# SQL Analytics - Day 4

## Objective

The objective of this phase is to perform multi-table business analytics using SQL JOIN operations on the Olist Brazilian E-Commerce dataset.

By combining customer, order, payment, product, seller, and review information, the analysis aims to generate deeper business insights that cannot be obtained from individual tables.

---

## SQL Concepts Used

* INNER JOIN
* Multi-table JOIN
* GROUP BY
* ORDER BY
* Aggregate Functions
* LIMIT

---

## Business Questions Answered

### Customer Analytics

1. Which customers generate the highest revenue?

2. Which customers place the highest number of orders?

---

### Product Analytics

3. Which products generate the highest revenue?

4. Which product categories generate the highest revenue?

---

### Seller Analytics

5. Which sellers generate the highest revenue?

6. Which seller states contribute the most revenue?

---

### Customer Satisfaction Analytics

7. What is the distribution of review scores?

8. Is there a relationship between review score and average order value?

---

### Delivery Analytics

9. What is the average delivery time?

---

### Geographic Revenue Analytics

10. Which cities generate the highest revenue?

---

## Results

### Top Revenue-Generating Customers

| customer_unique_id | total_spent |
|-------------------|------------:|
| 0a0a92112bd4c708ca5fde585afaa872 | 13664.08 |
| 46450c74a0d8c5ca9395da1daac6c120 | 9553.02 |
| da122df9eeddfedc1dc1f5349a1a690c | 7571.63 |
| 763c8b1c9c68a0229c42c9fc6f662b93 | 7274.88 |
| dc4802a71eae9be1dd28f5d788ceb526 | 6929.31 |
| 459bef486812aa25204be022145caa62 | 6922.21 |
| ff4159b92c40ebe40454e3e6a7c35ed6 | 6726.66 |
| 4007669dec559734d6f53e029e360987 | 6081.54 |
| 5d0a2980b292d049061542014e8960bf | 4809.44 |
| eebb5dda148d3893cdaf5b5ca3040ccb | 4764.34 |

Observation:

A small number of customers contribute significantly more revenue than the average customer, indicating the presence of high-value customer segments.

---

### Most Frequent Customers

| customer_unique_id | total_orders |
|-------------------|-------------:|
| 8d50f5eadf50201ccdcedfb9e2ac8455 | 17 |
| 3e43e6105506432c953e165fb2acf44c | 9 |
| ca77025e7201e3b30c44b472ff346268 | 7 |
| 1b6c7548a2a1f9037c1fd3ddfed95f33 | 7 |
| 6469f99c1f9dfae7733b25662e7f1782 | 7 |
| dc813062e0fc23409cd255f7f53c7074 | 6 |
| 63cfc61cee11cbe306bff5857d00bfe4 | 6 |
| 12f5d6e1cbf93dafd9dcc19095df0b3d | 6 |
| 47c1a3033b8b77b3ab6e109eb4d5fdf3 | 6 |
| de34b16117594161a6a89c50b289d35a | 6 |

Observation:

Certain customers place substantially more orders than the average customer, demonstrating strong customer loyalty and repeat purchase behavior.

---

### Top Revenue-Generating Products

| product_id | revenue |
|------------|--------:|
| bb50f2e236e5eea0100680137654686c | 63885.00 |
| 6cdd53843498f92890544667809f1595 | 54730.20 |
| d6160fb7873f184099d9bc95e30376af | 48899.34 |
| d1c427060a0f73f6b889a5c7c61f2ac4 | 47214.51 |
| 99a4788cb24856965c36a24e339b6058 | 43025.56 |
| 3dd2a17168ec895c781a9191c1e95ad7 | 41082.60 |
| 25c38557cf793876c5abdd5931f922db | 38907.32 |
| 5f504b3a1c75b73d6151be81eb05bdc9 | 37733.90 |
| 53b36df67ebb7c41585e8d54d6772e08 | 37683.42 |
| aca2eb7d00ea1a7b8ebd4e68314663af | 37608.90 |

Observation:

A limited set of products contributes a disproportionately large share of total revenue.

---

### Top Revenue-Generating Categories

| product_category_name | category_revenue |
|----------------------|-----------------:|
| beleza_saude | 1258681.34 |
| relogios_presentes | 1205005.68 |
| cama_mesa_banho | 1036988.68 |
| esporte_lazer | 988048.97 |
| informatica_acessorios | 911954.32 |
| moveis_decoracao | 729762.49 |
| cool_stuff | 635290.85 |
| utilidades_domesticas | 632248.66 |
| automotivo | 592720.11 |
| ferramentas_jardim | 485256.46 |

Observation:

Specific product categories dominate overall revenue generation and should be prioritized for inventory management and marketing initiatives.

---

### Top Sellers

| seller_id | seller_revenue |
|-----------|---------------:|
| 4869f7a5dfa277a7dca6462dcf3b52b2 | 229472.63 |
| 53243585a1d6dc2643021fd1853d8905 | 222776.05 |
| 4a3ca9315b744ce9f8e9374361493884 | 200472.92 |
| fa1c13f2614d7b5c4749cbc52fecda94 | 194042.03 |
| 7c67e1448b00f6e969d365cea6b010ab | 187923.89 |
| 7e93a43ef30c4f03f38b393420bc753a | 176431.87 |
| da8622b14eb17ae2831f4ac5b9dab84a | 160236.57 |
| 7a67c85e85bb2ce8582c35f2203ad736 | 141745.53 |
| 1025f0e2d44d7041d6cf58b6550e0bfa | 138968.55 |
| 955fee9216a65b617aa5c0531780ce60 | 135171.70 |

Observation:

Seller performance is highly concentrated, with a relatively small number of sellers accounting for a large portion of platform revenue.

---

### Seller Revenue by State

| seller_state | revenue |
|-------------|--------:|
| SP | 8753396.21 |
| PR | 1261887.21 |
| MG | 1011564.74 |
| RJ | 843984.22 |
| SC | 632426.07 |
| RS | 378559.54 |
| BA | 285561.56 |
| DF | 97749.48 |
| PE | 91493.85 |
| GO | 66399.21 |
| ES | 47689.61 |
| MA | 36408.95 |
| CE | 20240.64 |
| PB | 17095.00 |
| MT | 17070.72 |
| RN | 9992.60 |
| MS | 8551.69 |
| RO | 4762.20 |
| PI | 2522.00 |
| SE | 1606.20 |
| PA | 1238.00 |
| AM | 1177.00 |
| AC | 267.00 |

Observation:

Certain states act as major seller hubs and contribute significantly to platform revenue.

---

### Review Score Distribution

| review_score | total_reviews |
|-------------|--------------:|
| 1 | 11424 |
| 2 | 3151 |
| 3 | 8179 |
| 4 | 19142 |
| 5 | 57328 |

Observation:

Most customer reviews are concentrated in higher rating categories, indicating generally positive customer satisfaction.

---

### Review Score vs Order Value

| review_score | avg_order_value |
|-------------|----------------:|
| 1 | 186.39 |
| 2 | 163.37 |
| 3 | 145.13 |
| 4 | 147.98 |
| 5 | 149.70 |

Observation:

The relationship between spending and review score provides insight into whether higher-value customers are more or less satisfied with their purchases.

---

### Average Delivery Time

12.0940855756872175

Observation:

Average delivery duration serves as a key operational KPI and directly impacts customer satisfaction.

---

### Top Revenue-Generating Cities

| customer_city | revenue |
|--------------|--------:|
| sao paulo | 2203373.09 |
| rio de janeiro | 1161927.36 |
| belo horizonte | 421765.12 |
| brasilia | 354216.78 |
| curitiba | 247392.48 |
| porto alegre | 224731.42 |
| salvador | 218071.50 |
| campinas | 216248.43 |
| guarulhos | 165121.99 |
| niteroi | 139996.99 |

Observation:

Revenue is concentrated within a small number of cities, suggesting opportunities for targeted regional growth strategies.

---

## Key Business Insights

1. Revenue generation is concentrated among a subset of customers, products, sellers, and cities.

2. High-performing categories represent the primary drivers of business growth.

3. Customer satisfaction remains an important factor in overall platform performance.

4. Geographic concentration patterns reveal key markets for expansion and targeted marketing.

5. Multi-table analysis provides substantially richer business insights than single-table analytics.

---

## Impact on Project Development

The insights generated through JOIN-based analytics will support future project components, including:

* Customer Segmentation
* Customer Lifetime Value Prediction
* Sales Forecasting
* Explainable AI
* AI-Powered Business Intelligence Dashboard

---

## Next Steps

Next steps will focus on advanced SQL analytics using:

* Common Table Expressions (CTEs)
* Window Functions
* Customer Ranking
* Product Ranking
* Revenue Ranking
* Business KPI Analysis
