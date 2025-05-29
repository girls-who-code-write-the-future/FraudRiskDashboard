-- Finds top 10 sender accounts with the highest fraud rate
-- Only includes accounts that made at least 20 transactions

SELECT sender_account,
       COUNT(*) AS total_transactions,
       SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END) AS fraud_count,
       ROUND(SAFE_DIVIDE(SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END), COUNT(*)), 4) AS fraud_rate
FROM `fraud-risk-analysis-460910.financial_fraud_detection_data.transactions_with_risk`
GROUP BY sender_account
HAVING COUNT(*) >= 20
ORDER BY fraud_rate DESC
LIMIT 10;

