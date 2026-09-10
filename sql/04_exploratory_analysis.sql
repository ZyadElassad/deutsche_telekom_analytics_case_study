-- Purpose: Calculate unweighted macroeconomic baseline averages.

SELECT 
    admin_level,
    COUNT(*) AS entity_count,
    ROUND(AVG(cov_16_mbit), 2) AS avg_16_mbit,
    ROUND(AVG(cov_50_mbit), 2) AS avg_50_mbit,
    ROUND(AVG(cov_100_mbit), 2) AS avg_100_mbit,
    ROUND(AVG(cov_gigabit), 2) AS avg_gigabit
FROM `telekom_infrastructure.broadband_cleaned`
WHERE admin_level LIKE '%Gemeinde%'
GROUP BY admin_level;
