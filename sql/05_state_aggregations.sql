-- Purpose: Identify regional disparities across federal states.

SELECT 
    municipality_name AS federal_state,
    cov_100_mbit,
    cov_gigabit
FROM `telekom_infrastructure.broadband_cleaned`
WHERE admin_level LIKE '%Land%'
ORDER BY cov_gigabit DESC;
