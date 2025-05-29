-- 1. Fraud rate by payment channel
-- 1. Fraud rate by payment channel
-- Helps identify which channels are more prone to fraudulent activity

SELECT payment_channel,
       COUNT(*) AS total_transactions,
       SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END) AS total_fraud,
       ROUND(SAFE_DIVIDE(SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END), COUNT(*)), 4) AS fraud_rate
FROM `fraud-risk-analysis-460910.financial_fraud_detection_data.transactions_with_risk`
GROUP BY payment_channel
ORDER BY fraud_rate DESC;


-- 2. Fraud rate by risk score category
-- Uses the heuristic risk_score to group transactions and assess actual fraud risk

SELECT
  CASE
    WHEN risk_score >= 0.6 THEN 'High Risk'
    WHEN risk_score >= 0.3 THEN 'Medium Risk'
    ELSE 'Low Risk'
  END AS risk_category,
  COUNT(*) AS total_transactions,
  SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END) AS total_frauds,
  ROUND(SAFE_DIVIDE(SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END), COUNT(*)), 4) AS fraud_rate
FROM `fraud-risk-analysis-460910.financial_fraud_detection_data.transactions_with_risk`
GROUP BY risk_category
ORDER BY fraud_rate DESC;
