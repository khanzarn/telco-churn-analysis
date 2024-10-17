
SELECT 
    Offer,
    Contract,
    Age,
    AVG(`Long-Distance-Charges`) AS avg_monthly_charges
FROM 
    customer_churn
WHERE 
    `Churn Label` = 'Yes'
    AND `Long-Distance-Charges` IS NOT NULL
GROUP BY 
    Offer, 
    Contract, 
    Age
ORDER BY 
    avg_monthly_charges DESC
LIMIT 5;


SELECT 
    'Customer ID',
    `Churn Reason`
FROM 
    customer_churn
WHERE 
    'Churn Label' = 'Yes'
    AND `Churn Reason` IS NOT NULL;
    
SELECT 
    `Customer ID`,  -- Use backticks if the column name has spaces
    `Churn Reason`
FROM 
    customer_churn
WHERE 
    `Churn Label` = 'Yes'  -- Use backticks for column names with spaces
    AND `Churn Reason` IS NOT NULL;
    
SELECT 
    `Payment Method`,
    COUNT(CASE WHEN `Churn Label` = 'Yes' THEN 1 END) AS churned_customers,
    COUNT(CASE WHEN `Churn Label` = 'No' THEN 1 END) AS retained_customers,
    COUNT(*) AS total_customers,
    (COUNT(CASE WHEN `Churn Label` = 'Yes' THEN 1 END) / COUNT(*)) * 100 AS churn_rate
FROM 
    customer_churn
GROUP BY 
    `Payment Method`
ORDER BY 
    churn_rate DESC;
    SELECT 
    Contract,
    COUNT(*) AS churned_customers
FROM 
    customer_churn
WHERE 
    `Churn Label` = 'Yes'
GROUP BY 
    Contract
ORDER BY 
    churned_customers DESC;

SELECT 
    `Internet Type`,
    COUNT(CASE WHEN `Churn Label` = 'Yes' THEN 1 END) AS churned_customers,
    COUNT(*) AS total_customers,
    (COUNT(CASE WHEN `Churn Label` = 'Yes' THEN 1 END) / COUNT(*)) * 100 AS churn_rate
FROM 
    customer_churn
GROUP BY 
    `Internet Type`
ORDER BY 
    churn_rate DESC;
    SELECT 
    Contract,
    COUNT(*) AS churned_customers
FROM 
    customer_churn
WHERE 
    `Churn Label` = 'Yes'
GROUP BY 
    Contract
ORDER BY 
    churned_customers DESC;
    SELECT 
    `Internet Type`,
    COUNT(CASE WHEN `Churn Label` = 'Yes' THEN 1 END) AS churned_customers,
    COUNT(*) AS total_customers,
    (COUNT(CASE WHEN `Churn Label` = 'Yes' THEN 1 END) / COUNT(*)) * 100 AS churn_rate
FROM 
    customer_churn
GROUP BY 
    `Internet Type`
ORDER BY 
    churn_rate DESC;

