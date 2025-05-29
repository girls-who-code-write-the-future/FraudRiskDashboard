HEAD
# FraudRiskDashboard
An interactive dashboard built in Tableau, analyzing patterns and risks of fraudulent transactions using financial transaction data.  

# 📊 Fraud Risk Analytics Dashboard 

This project analyzes financial transaction data to identify trends and patterns in fraudulent activity. Using Google BigQuery for SQL-based analysis and Tableau for interactive visualizations, this dashboard provides actionable insights into transaction risk levels based on various attributes.

---

## Dashboard Overview

📈 **Fraud Rate Trend Over Time**  
Month-by-month overview of fraud rates.

💳 **Fraud Rate by Payment Channel**  
Comparison of fraud rate and transaction volume by channel (e.g. Card, UPI, Wire).

⚠️ **Fraud Distribution by Risk Category**  
Proportions of High, Medium, and Low Risk transactions.

👤 **Top Risky Sender Accounts**  
Accounts with the highest fraud rates and transaction counts.

---

## Tools Used

- **Google BigQuery** – SQL-based data exploration & view creation  
- **Tableau Public** – Interactive dashboard creation  
- **Git & GitHub** – Version control and project documentation

---

## Folder Structure

FraudRiskDashboard/  
- top_senders.sql  
- exploratory_queries.sql  
- risk_score_view.sql  
- README.md  
- screenshots/  
  - dashboard_overview.png


---

## Preview

[![Fraud Risk Dashboard](screenshots/dashboard_overview.png)](https://dub01.online.tableau.com/#/site/olgaskora12380-8dbf5b138b/views/FraudRiskAnalyticsDashboard/FraudRiskInsightsDashboard)


---

## Live Dashboard

[View Interactive Dashboard](https://dub01.online.tableau.com/#/site/olgaskora12380-8dbf5b138b/views/FraudRiskAnalyticsDashboard/FraudRiskInsightsDashboard)

---

## How to Use

To reproduce the dashboard locally:

1. Clone the repository  
   `git clone https://github.com/girls-who-code-write-the-future/FraudRiskDashboard.git`

2. Open `*.sql` files in BigQuery and run queries on your own dataset.

3. Open Tableau and connect to BigQuery views.

4. Rebuild the visualizations using screenshots or live dashboard as a reference.

Created by **Olga Skóra**  
🎓 Junior Data Analyst | [LinkedIn](https://www.linkedin.com/in/olga-sk%C3%B3ra/)  
📅 2025 Portfolio Project

cac6f56 (Add final README with live dashboard and preview)
