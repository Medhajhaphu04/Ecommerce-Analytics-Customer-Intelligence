# Customer Spend Prediction

## Project Objective

The objective of this phase is to predict customer spending behavior using historical transaction, purchasing, and customer engagement features.

Accurately predicting customer spending helps businesses:

* Identify high-value customers
* Forecast future revenue potential
* Optimize marketing investments
* Improve customer targeting strategies
* Support customer lifetime value initiatives

This phase represents the regression component of the project and complements the customer churn prediction system developed earlier.

---

# Connection to Previous Project Phases

This phase builds upon outputs generated during previous stages of the project.

Completed phases include:

* SQL Analytics
* Feature Engineering
* Customer Segmentation
* Customer Lifetime Value Analysis
* Revenue Forecasting
* Streamlit Business Intelligence Dashboard
* Customer Churn Prediction

The engineered customer-level features generated during these phases were used as predictors for customer spending.

---

# Business Problem

Customer spending varies significantly across customers.

Some customers generate only a small amount of revenue, while others contribute substantial revenue over their lifetime.

The goal of this phase is to build machine learning models capable of estimating customer spending based on customer purchasing behavior and engagement characteristics.

---

# Target Variable

## Monetary Value

The target variable selected for prediction is:

```python
monetary
```

which represents the total amount spent by a customer.

---

# Distribution Analysis

Before training regression models, the distribution of customer spending was analyzed.

![Monetary Distribution](../visualizations/monetary_distribution.png)

## Observation

Customer spending exhibits a highly right-skewed distribution.

Most customers spend relatively small amounts, while a small number of customers contribute exceptionally high revenue.

---

# Target Transformation

To reduce skewness and improve model stability, a logarithmic transformation was applied.

## Transformation

```python
df["monetary_log"] = np.log1p(df["monetary"])
```

---

# Log Transformed Distribution

![Log Monetary Distribution](../visualizations/log_monetary_distribution.png)

The transformed distribution is significantly more balanced and suitable for regression modeling.

---

# Feature Selection

The following customer features were used as predictors.

| Feature                  |
| ------------------------ |
| frequency                |
| avg_order_value          |
| category_count           |
| avg_review_score         |
| avg_delivery_days        |
| total_freight_paid       |
| customer_segment_encoded |

---

# Train-Test Split

The dataset was divided into:

* 80% Training Data
* 20% Testing Data

This ensures that model performance is evaluated on unseen customer data.

---

# Models Evaluated

Three regression models were trained and evaluated.

## 1. Linear Regression

Used as a baseline model.

### Results

| Metric | Value |
| ------ | ----: |
| MAE    | 0.426 |
| RMSE   | 0.633 |
| R²     | 0.515 |

### Findings

The model explained approximately 51.5% of spending variation.

While useful as a baseline, it struggled to capture complex customer spending behavior.

---

## 2. Random Forest Regressor

An ensemble learning model capable of capturing non-linear relationships.

### Results

| Metric | Value |
| ------ | ----: |
| MAE    | 0.086 |
| RMSE   | 0.204 |
| R²     | 0.949 |

### Findings

The Random Forest model significantly outperformed Linear Regression across all evaluation metrics.

---

## 3. XGBoost Regressor

A gradient boosting model designed for high predictive performance.

### Results

| Metric | Value |
| ------ | ----: |
| MAE    | 0.100 |
| RMSE   | 0.208 |
| R²     | 0.947 |

### Findings

XGBoost delivered strong performance but was slightly inferior to Random Forest on all evaluation metrics.

---

# Model Comparison

| Model             |   MAE |  RMSE |    R² |
| ----------------- | ----: | ----: | ----: |
| Linear Regression | 0.426 | 0.633 | 0.515 |
| Random Forest     | 0.086 | 0.204 | 0.949 |
| XGBoost           | 0.100 | 0.208 | 0.947 |

---

# Final Model Selection

## Selected Model

### Random Forest Regressor

Random Forest was selected as the final spend prediction model because it achieved:

* Lowest MAE
* Lowest RMSE
* Highest R²

### Final Performance

| Metric | Value |
| ------ | ----: |
| MAE    | 0.086 |
| RMSE   | 0.204 |
| R²     | 0.949 |

These results indicate that the model explains approximately 94.9% of the variation in customer spending.

---

# Feature Importance Analysis

![Feature Importance](../visualizations/rf_regression_feature_importance.png)

| Feature                  | Importance |
| ------------------------ | ---------: |
| avg_order_value          |      0.868 |
| total_freight_paid       |      0.071 |
| customer_segment_encoded |      0.040 |
| avg_delivery_days        |      0.013 |
| avg_review_score         |      0.004 |
| category_count           |      0.003 |
| frequency                |      0.002 |

---

# Key Findings

## Average Order Value Dominance

Average order value emerged as the strongest predictor of customer spending.

This result is expected because customers with larger average transaction values generally contribute more overall revenue.

## Customer Segmentation

Customer segmentation contributed additional predictive information and helped improve spending estimation.

## Shipping Costs

Shipping-related costs also influenced customer spending behavior.

---

# Feature Ablation Study

To evaluate the contribution of average order value, an additional experiment was conducted by removing the feature from the Random Forest model.

## Results

| Model                                   |   MAE |  RMSE |    R² |
| --------------------------------------- | ----: | ----: | ----: |
| Random Forest (With avg_order_value)    | 0.086 | 0.204 | 0.949 |
| Random Forest (Without avg_order_value) | 0.401 | 0.560 | 0.620 |

---

## Interpretation

Removing average order value caused a substantial decline in model performance.

Key observations:

* R² decreased from 0.949 to 0.620.
* MAE increased significantly.
* RMSE increased significantly.

This demonstrates that average order value is the primary driver of customer spending behavior.

Therefore, avg_order_value was retained in the final model.

---

# Business Insights

## Insight 1

Customer spending can be predicted with high accuracy using behavioral and transactional features.

## Insight 2

Average order value is the strongest determinant of customer spending.

## Insight 3

Customer segmentation contributes meaningful predictive information.

## Insight 4

Shipping costs and operational characteristics influence spending behavior.

---

# Business Recommendations

### Recommendation 1

Identify customers with increasing average order values and prioritize them for premium campaigns.

### Recommendation 2

Use spend prediction scores to support customer lifetime value strategies.

### Recommendation 3

Combine spend prediction with churn prediction to identify high-value customers at risk of leaving.

### Recommendation 4

Develop personalized marketing campaigns for customers with high predicted spending potential.

---

# Conclusion

This phase successfully developed customer spend prediction models using machine learning techniques.

Three regression models were evaluated:

* Linear Regression
* Random Forest Regressor
* XGBoost Regressor

Among all evaluated models, Random Forest delivered the strongest overall performance and was selected as the final production-ready model.

The final model achieved:

* MAE: 0.086
* RMSE: 0.204
* R²: 0.949

These results demonstrate strong predictive capability and provide a foundation for customer value forecasting, revenue planning, and strategic customer targeting.
