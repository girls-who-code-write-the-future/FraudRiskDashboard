-- Creates a view that calculates a heuristic fraud risk score for each transaction.
-- The score ranges from 0.0 to 1.0 and is based on known fraud indicators.

CREATE OR REPLACE VIEW `fraud-risk-analysis-460910.financial_fraud_detection_data.transactions_with_risk` AS
SELECT *,
  SAFE_DIVIDE(
    (
      -- Large amount might indicate suspicious behavior
      IF(amount > 10000, 0.2, 0) +
      
      -- High velocity means many recent transactions, which could be fraud
      IF(velocity_score > 7, 0.2, 0) +
      
      -- Geographic anomaly score indicates location-based risks
      IF(geo_anomaly_score > 0.8, 0.2, 0) +
      
      -- Spending far from the norm can suggest account takeover
      IF(spending_deviation_score > 0.5, 0.2, 0) +
      
      -- Certain channels (web, atm) are m
